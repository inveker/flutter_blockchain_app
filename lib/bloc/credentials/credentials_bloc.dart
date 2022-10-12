import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/credentials.dart';

part 'credentials_bloc.freezed.dart';

part 'credentials_event.dart';

part 'credentials_state.dart';

class CredentialsBloc extends Bloc<CredentialsEvent, CredentialsState> {
  CredentialsBloc() : super(CredentialsState()) {
    on<CredentialsSetEvent>(_set);
  }

  Future<void> _set(CredentialsSetEvent event, Emitter<CredentialsState> emit) async {
    emit(state.copyWith(
      credentials: event.credentials,
    ));
  }
}
