part of 'walletconnect_provider_bloc.dart';

@freezed
class WalletConnectProviderEvent with _$WalletConnectProviderEvent {
  factory WalletConnectProviderEvent.connect() = WalletConnectProviderConnectEvent;

  factory WalletConnectProviderEvent.restore(Map<String, dynamic> json) = WalletConnectProviderRestoreEvent;

  factory WalletConnectProviderEvent.reset() = WalletConnectProviderResetEvent;

  factory WalletConnectProviderEvent.setDisplayUri(String? displayUri) = WalletConnectProviderSetDisplayUriEvent;

  factory WalletConnectProviderEvent.updateSession(WCSessionUpdateResponse sessionUpdate) = WalletConnectProviderUpdateSessionEvent;
}
