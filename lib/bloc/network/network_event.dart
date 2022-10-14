part of 'network_bloc.dart';

@freezed
class NetworkEvent with _$NetworkEvent {
  factory NetworkEvent.switchChain(ChainModel chain) = NetworkSwitchChainEvent;

  factory NetworkEvent.walletConnected() = NetworkWalletConnectedEvent;

  factory NetworkEvent.setSwitchChainStrategy(SwitchChainStrategy? switchChainStrategy) = NetworkSetSwitchChainStrategyEvent;

  factory NetworkEvent.setLogoutStrategy(Future<void> Function()? logoutStrategy) = NetworkSetLogoutStrategyEvent;

  factory NetworkEvent.logout() = NetworkLogoutEvent;
}
