import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/switch_chain_strategy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chain_bloc.freezed.dart';

part 'chain_event.dart';

part 'chain_state.dart';

class ChainBloc extends Bloc<ChainEvent, ChainState> {
  final List<ChainModel> chains;

  ChainBloc({
    required this.chains,
  })  : assert(chains.isNotEmpty),
        super(
          ChainState(
            currentChain: chains.first,
          ),
        ) {
    on<ChainSwitchChainEvent>(_switchChain);
    on<ChainSwitchChainByIdEvent>(_switchChainById);
    on<ChainSetSwitchChainStrategyEvent>(_setSwitchChainStrategy);
  }


  Future<void> _switchChain(ChainSwitchChainEvent event, Emitter<ChainState> emit) async {
    if(!chains.contains(event.chain)) throw Exception('ChainBloc: Unregistered chain');

    final chainSwitchSuccess = await state.switchChainStrategy?.execute(event.chain) ?? true;
    if (chainSwitchSuccess) {
      emit(state.copyWith(
        currentChain: event.chain,
      ));
    }
  }

  Future<void> _switchChainById(ChainSwitchChainByIdEvent event, Emitter<ChainState> emit) async {
    final chainIndex = chains.indexWhere((chain) => chain.id == event.chainId);
    if(chainIndex == -1) throw Exception('ChainBloc: Unregistered chain');

    add(ChainEvent.switchChain(chains[chainIndex]));
  }

  Future<void> _setSwitchChainStrategy(ChainSetSwitchChainStrategyEvent event, Emitter<ChainState> emit) async {
    emit(state.copyWith(
      switchChainStrategy: event.switchChainStrategy,
    ));
  }
}
