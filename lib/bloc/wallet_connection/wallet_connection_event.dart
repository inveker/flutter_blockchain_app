part of 'wallet_connection_bloc.dart';

@freezed
class WalletConnectionEvent with _$WalletConnectionEvent {
  factory WalletConnectionEvent.walletConnected() = WalletConnectionWalletConnectedEvent;

  factory WalletConnectionEvent.logout() = WalletConnectionLogoutEvent;
}
