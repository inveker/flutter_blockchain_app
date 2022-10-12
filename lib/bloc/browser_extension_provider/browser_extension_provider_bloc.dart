import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/browser_extension/browser_extension_provider_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/json_rpc.dart';

part 'browser_extension_provider_bloc.freezed.dart';

part 'browser_extension_provider_event.dart';

part 'browser_extension_provider_state.dart';

class BrowserExtensionProviderBloc extends Bloc<BrowserExtensionProviderEvent, BrowserExtensionProviderState> {
  final NetworkBloc networkBloc;
  late final BrowserExtensionProviderBuilder _browserExtensionProvider;

  BrowserExtensionProviderBloc({
    required this.networkBloc,
  }) : super(BrowserExtensionProviderState()) {
    on<BrowserExtensionProviderConnectEvent>(_connect);
    on<BrowserExtensionProviderSetIsSupportedEvent>(_setIsSupported);
    on<BrowserExtensionProviderSetIsInstalledEvent>(_setIsInstalled);

    _browserExtensionProvider = BrowserExtensionProviderBuilder();

    final isSupported = _browserExtensionProvider.isSupported();
    if (isSupported) {
      add(BrowserExtensionProviderEvent.setIsSupported(isSupported));
      add(BrowserExtensionProviderEvent.setIsInstalled(_browserExtensionProvider.isInstalled()));
    }
  }

  Future<void> _connect(BrowserExtensionProviderConnectEvent event, Emitter<BrowserExtensionProviderState> emit) async {
    if (state.isSupported) throw Exception('BrowserExtensionProviderBloc not supported connect event');
    if (state.isInstalled) throw Exception('BrowserExtensionProviderBloc not installed extension');
    if(networkBloc.state.hasWalletConnection) throw Exception('Network alreade has connection');

    emit(state.copyWith(
      isConnected: true,
      rpcService: _browserExtensionProvider.buildRpcService(),
      credentials: await _browserExtensionProvider.buildCredentials(),
    ));

    networkBloc.add(NetworkEvent.walletConnected());
    networkBloc.add(NetworkEvent.setSwitchChainStrategy(__switchChainStrategy));
  }

  Future<void> _setIsSupported(BrowserExtensionProviderSetIsSupportedEvent event, Emitter<BrowserExtensionProviderState> emit) async {
    emit(state.copyWith(
      isSupported: event.isSupported,
    ));
  }

  Future<void> _setIsInstalled(BrowserExtensionProviderSetIsInstalledEvent event, Emitter<BrowserExtensionProviderState> emit) async {
    emit(state.copyWith(
      isInstalled: event.isInstalled,
    ));
  }

  Future<bool> __switchChainStrategy() async {
    await state.rpcService!.call('wallet_switchEthereumChain', [{
      'chainId': networkBloc.state.currentChain.getHexId(),
    }]);
    return true;
  }
}
