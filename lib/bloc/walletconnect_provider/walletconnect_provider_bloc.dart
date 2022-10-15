import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/walletconnect/walletconnect_provider_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/json_rpc.dart';

part 'walletconnect_provider_bloc.freezed.dart';

part 'walletconnect_provider_event.dart';

part 'walletconnect_provider_state.dart';

class WalletConnectProviderBloc extends HydratedBloc<WalletConnectProviderEvent, WalletConnectProviderState> {
  WalletConnectProviderBuilder? _walletConnectProvider;

  WalletConnectProviderBloc() : super(WalletConnectProviderState()) {
    _walletConnectProvider ??= WalletConnectProviderBuilder();
    on<WalletConnectProviderConnectEvent>(_connect);
    on<WalletConnectProviderRestoreEvent>(_restore);
    on<WalletConnectProviderResetEvent>(_reset);
    on<WalletConnectProviderSetDisplayUriEvent>(_setDisplayUri);
  }

  Future<void> _connect(WalletConnectProviderConnectEvent event, Emitter<WalletConnectProviderState> emit) async {
    final rpcService = _walletConnectProvider!.buildRpcService();
    final credentials = await _walletConnectProvider!.buildCredentials((displayUri) {
      add(WalletConnectProviderEvent.setDisplayUri(displayUri));
    });

    emit(state.copyWith(
      isConnected: true,
      rpcService: rpcService,
      credentials: credentials,
    ));
  }

  Future<void> _setDisplayUri(WalletConnectProviderSetDisplayUriEvent event, Emitter<WalletConnectProviderState> emit) async {
    emit(state.copyWith(
      displayUri: event.displayUri,
    ));
  }

  Future<void> _restore(WalletConnectProviderRestoreEvent event, Emitter<WalletConnectProviderState> emit) async {
    final json = event.json;

    final session = json['session'] == null ? null : WalletConnectSession.fromJson(
      json['session'],
    );

    if(session != null) {
      _walletConnectProvider = WalletConnectProviderBuilder.fromSession(
        session: session,
      );

      emit(WalletConnectProviderState(
        isConnected: json['isConnected'],
        rpcService: _walletConnectProvider!.buildRpcService(),
        credentials: _walletConnectProvider!.restoreCredentials(),
      ));
    }
  }

  Future<void> _reset(WalletConnectProviderResetEvent event, Emitter<WalletConnectProviderState> emit) async {
    _walletConnectProvider?.session.reset();
    await _walletConnectProvider?.walletConnect.close(forceClose: true);
    emit(WalletConnectProviderState());
  }

  @override
  WalletConnectProviderState? fromJson(Map<String, dynamic> json) {
    Future(() => add(WalletConnectProviderEvent.restore(json)));
  }

  @override
  Map<String, dynamic>? toJson(WalletConnectProviderState state) {
    return {
      'session': _walletConnectProvider?.session.toJson(),
      'isConnected': state.isConnected,
    };
  }
}
