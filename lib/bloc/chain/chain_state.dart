part of 'chain_bloc.dart';

@freezed
class ChainState with _$ChainState {
  factory ChainState({
    required ChainModel currentChain,
    SwitchChainStrategy? switchChainStrategy,
  }) = _ChainState;
}
