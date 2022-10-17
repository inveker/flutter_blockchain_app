part of 'wallet_external_updates_bloc.dart';

@freezed
class WalletExternalUpdatesState with _$WalletExternalUpdatesState {
  factory WalletExternalUpdatesState({
    String? newAccount,
    int? newChainId,
  }) = _WalletExternalUpdatesState;
}
