part of 'wallet_external_updates_bloc.dart';

@freezed
class WalletExternalUpdatesEvent with _$WalletExternalUpdatesEvent {
  factory WalletExternalUpdatesEvent.account(String account) = WalletExternalUpdatesAccountEvent;

  factory WalletExternalUpdatesEvent.chain(int chainId) = WalletExternalUpdatesChainEvent;
}
