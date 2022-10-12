part of 'network_bloc.dart';

@freezed
class NetworkState with _$NetworkState {
  factory NetworkState({
    required ChainModel currentChain,
    @Default(false) bool hasWalletConnection,
    Future<bool> Function()? switchChainStrategy,
    Future<void> Function()? logoutStrategy,
    @Default(false) bool switchChainRejected,
}) = _NetworkState;
}