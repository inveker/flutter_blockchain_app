part of 'walletconnect_provider_bloc.dart';

@freezed
class WalletConnectProviderEvent with _$WalletConnectProviderEvent {
  factory WalletConnectProviderEvent.connect() = WalletConnectProviderConnectEvent;

  factory WalletConnectProviderEvent.setDisplayUri(String? displayUri) = WalletConnectProviderSetDisplayUriEvent;
}
