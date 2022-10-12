part of 'walletconnect_provider_bloc.dart';

@freezed
class WalletConnectProviderState with _$WalletConnectProviderState {
  factory WalletConnectProviderState({
    @Default(false) isConnected,
    RpcService? rpcService,
    CredentialsWithKnownAddress? credentials,
    String? displayUri,
  }) = _WalletConnectProviderState;
}
