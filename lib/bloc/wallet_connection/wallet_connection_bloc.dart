import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_connection_bloc.freezed.dart';

part 'wallet_connection_event.dart';

part 'wallet_connection_state.dart';

class WalletConnectionBloc extends Bloc<WalletConnectionEvent, WalletConnectionState> {
  WalletConnectionBloc() : super(WalletConnectionState()) {
    on<WalletConnectionWalletConnectedEvent>(_walletConnected);
    on<WalletConnectionLogoutEvent>(_logout);
  }

  Future<void> _walletConnected(WalletConnectionWalletConnectedEvent event, Emitter<WalletConnectionState> emit) async {
    emit(state.copyWith(
      hasWalletConnection: true,
    ));
  }

  Future<void> _logout(WalletConnectionLogoutEvent event, Emitter<WalletConnectionState> emit) async {
    emit(state.copyWith(
      hasWalletConnection: false,
    ));
  }
}
