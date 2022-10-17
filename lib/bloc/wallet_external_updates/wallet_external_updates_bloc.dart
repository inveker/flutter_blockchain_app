import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_external_updates_bloc.freezed.dart';

part 'wallet_external_updates_event.dart';

part 'wallet_external_updates_state.dart';

class WalletExternalUpdatesBloc extends Bloc<WalletExternalUpdatesEvent, WalletExternalUpdatesState> {
  WalletExternalUpdatesBloc() : super(WalletExternalUpdatesState()) {
    on<WalletExternalUpdatesAccountEvent>(_account);
    on<WalletExternalUpdatesChainEvent>(_chain);
  }

  Future<void> _account(WalletExternalUpdatesAccountEvent event, Emitter<WalletExternalUpdatesState> emit) async {
    emit(state.copyWith(
      newAccount: event.account,
    ));
  }

  Future<void> _chain(WalletExternalUpdatesChainEvent event, Emitter<WalletExternalUpdatesState> emit) async {
    emit(state.copyWith(
      newChainId: event.chainId,
    ));
  }
}
