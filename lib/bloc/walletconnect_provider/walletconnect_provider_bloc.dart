import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/walletconnect/walletconnect_provider_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/json_rpc.dart';

part 'walletconnect_provider_bloc.freezed.dart';

part 'walletconnect_provider_event.dart';

part 'walletconnect_provider_state.dart';

class WalletConnectProviderBloc extends Bloc<WalletConnectProviderEvent, WalletConnectProviderState> {
  final NetworkBloc networkBloc;

  late final WalletConnectProviderBuilder _walletConnectProvider;

  WalletConnectProviderBloc({
    required this.networkBloc,
  }) : super(WalletConnectProviderState()) {
    on<WalletConnectProviderConnectEvent>(_connect);
    on<WalletConnectProviderSetDisplayUriEvent>(_setDisplayUri);

    _walletConnectProvider = WalletConnectProviderBuilder();
  }

  Future<void> _connect(WalletConnectProviderConnectEvent event, Emitter<WalletConnectProviderState> emit) async {
    if(networkBloc.state.hasWalletConnection) throw Exception('Network already has connection');

    final rpcService = _walletConnectProvider.buildRpcService();
    final credentials = await _walletConnectProvider.buildCredentials((displayUri) {
      add(WalletConnectProviderEvent.setDisplayUri(displayUri));
    });

    emit(state.copyWith(
      isConnected: true,
      rpcService: rpcService,
      credentials: credentials,
    ));

    networkBloc.add(NetworkEvent.walletConnected());
    networkBloc.add(NetworkEvent.setSwitchChainStrategy(__switchChainStrategy));
    networkBloc.add(NetworkEvent.setLogoutStrategy(__logoutStrategy));
  }

  Future<void> _setDisplayUri(WalletConnectProviderSetDisplayUriEvent event, Emitter<WalletConnectProviderState> emit) async {
    emit(state.copyWith(
      displayUri: event.displayUri,
    ));
  }

  Future<bool> __switchChainStrategy() async {
    await state.rpcService!.call('wallet_switchEthereumChain', [{
      'chainId': networkBloc.state.currentChain.getHexId(),
    }]);
    return true;
  }

  Future<void> __logoutStrategy() async {
    emit(WalletConnectProviderState());
  }
}
