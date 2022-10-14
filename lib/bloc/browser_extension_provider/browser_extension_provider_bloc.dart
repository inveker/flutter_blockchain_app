import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/browser_extension/browser_extension_provider_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/json_rpc.dart';

part 'browser_extension_provider_bloc.freezed.dart';

part 'browser_extension_provider_event.dart';

part 'browser_extension_provider_state.dart';

class BrowserExtensionProviderBloc extends Bloc<BrowserExtensionProviderEvent, BrowserExtensionProviderState> {
  static final BrowserExtensionProviderBuilder _browserExtensionProvider = BrowserExtensionProviderBuilder();

  BrowserExtensionProviderBloc() : super(BrowserExtensionProviderState(
    isSupported: _browserExtensionProvider.isSupported(),
    isInstalled: _browserExtensionProvider.isInstalled(),
  )) {
    on<BrowserExtensionProviderConnectEvent>(_connect);
  }

  Future<void> _connect(BrowserExtensionProviderConnectEvent event, Emitter<BrowserExtensionProviderState> emit) async {
    if (!state.isSupported) throw Exception('BrowserExtensionProviderBloc not supported connect event');
    if (!state.isInstalled) throw Exception('BrowserExtensionProviderBloc not installed extension');

    emit(state.copyWith(
      isConnected: true,
      rpcService: _browserExtensionProvider.buildRpcService(),
      credentials: await _browserExtensionProvider.buildCredentials(),
    ));
  }
}
