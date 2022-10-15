import 'package:bloc/bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/switch_chain_strategy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_bloc.freezed.dart';

part 'network_event.dart';

part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  final List<ChainModel> chains;

  NetworkBloc({
    required this.chains,
  })  : assert(chains.isNotEmpty),
        super(
          NetworkState(
            currentChain: chains.first,
          ),
        ) {
    on<NetworkSwitchChainEvent>(_switchChain);
    on<NetworkWalletConnectedEvent>(_walletConnected);
    on<NetworkSetSwitchChainStrategyEvent>(_setSwitchChainStrategy);
    on<NetworkLogoutEvent>(_logout);
  }

  Future<void> _switchChain(NetworkSwitchChainEvent event, Emitter<NetworkState> emit) async {
    if(!chains.contains(event.chain)) throw Exception('NetworkBloc: Unregistered chain');

    final chainSwitchSuccess = await state.switchChainStrategy?.execute(event.chain) ?? true;
    if (chainSwitchSuccess) {
      emit(state.copyWith(
        currentChain: event.chain,
        switchChainRejected: false,
      ));
    } else {
      emit(state.copyWith(
        switchChainRejected: true,
      ));
    }
  }

  Future<void> _walletConnected(NetworkWalletConnectedEvent event, Emitter<NetworkState> emit) async {
    emit(state.copyWith(
      hasWalletConnection: true,
    ));
  }

  Future<void> _setSwitchChainStrategy(NetworkSetSwitchChainStrategyEvent event, Emitter<NetworkState> emit) async {
    emit(state.copyWith(
      switchChainStrategy: event.switchChainStrategy,
    ));
  }

  Future<void> _logout(NetworkLogoutEvent event, Emitter<NetworkState> emit) async {
    emit(state.copyWith(
      hasWalletConnection: false,
    ));
  }
}
