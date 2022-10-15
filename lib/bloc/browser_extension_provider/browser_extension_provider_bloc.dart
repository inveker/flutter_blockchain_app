import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/browser_extension/browser_extension_provider_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/json_rpc.dart';

part 'browser_extension_provider_bloc.freezed.dart';

part 'browser_extension_provider_event.dart';

part 'browser_extension_provider_state.dart';

class BrowserExtensionProviderBloc extends HydratedBloc<BrowserExtensionProviderEvent, BrowserExtensionProviderState> {
  static final BrowserExtensionProviderBuilder _browserExtensionProvider = BrowserExtensionProviderBuilder();

  BrowserExtensionProviderBloc()
      : super(BrowserExtensionProviderState(
          isSupported: _browserExtensionProvider.isSupported(),
          isInstalled: _browserExtensionProvider.isInstalled(),
        )) {
    on<BrowserExtensionProviderConnectEvent>(_connect);
    on<BrowserExtensionProviderRestoreEvent>(_restore);
    on<BrowserExtensionProviderResetEvent>(_reset);
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

  Future<void> _restore(BrowserExtensionProviderRestoreEvent event, Emitter<BrowserExtensionProviderState> emit) async {
    final json = event.json;
    final isSupported = _browserExtensionProvider.isSupported();
    final isInstalled = _browserExtensionProvider.isInstalled();
    final bool isConnected = json['isConnected'];
    final String? account = json['account'];

    if (isSupported && isInstalled && isConnected && account != null) {
      emit(BrowserExtensionProviderState(
        isSupported: isSupported,
        isInstalled: isInstalled,
        isConnected: isConnected,
        rpcService: _browserExtensionProvider.buildRpcService(),
        credentials: _browserExtensionProvider.restoreCredentials(account),
      ));
    }
  }

  Future<void> _reset(BrowserExtensionProviderResetEvent event, Emitter<BrowserExtensionProviderState> emit) async {
    emit(BrowserExtensionProviderState(
      isSupported: state.isSupported,
      isInstalled: state.isInstalled,
    ));
  }

  @override
  BrowserExtensionProviderState? fromJson(Map<String, dynamic> json) {
    Future(() => add(BrowserExtensionProviderEvent.restore(json)));
  }

  @override
  Map<String, dynamic>? toJson(BrowserExtensionProviderState state) {
    return {
      'isConnected': state.isConnected,
      'account': state.credentials?.address.hex,
    };
  }
}
