part of 'wallet_connection_bloc.dart';

@freezed
class WalletConnectionState with _$WalletConnectionState {
  factory WalletConnectionState({
    @Default(false) bool hasWalletConnection,
  }) = _WalletConnectionState;
}
