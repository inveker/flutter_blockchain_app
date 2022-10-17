import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';

part 'web3_client_bloc.freezed.dart';

part 'web3_client_event.dart';

part 'web3_client_state.dart';

class Web3ClientBloc extends Bloc<Web3ClientEvent, Web3ClientState> {
  Web3ClientBloc() : super(Web3ClientState()) {
    on<Web3ClientSetEvent>(_set);
    on<Web3ClientCreateFromRpcEvent>(_createFromRpc);
  }

  Future<void> _set(Web3ClientSetEvent event, Emitter<Web3ClientState> emit) async {
    await _resetClient();
    emit(state.copyWith(
      client: event.client,
    ));
  }

  Future<void> _createFromRpc(Web3ClientCreateFromRpcEvent event, Emitter<Web3ClientState> emit) async {
    await _resetClient();
    emit(state.copyWith(
      client: Web3Client.custom(event.rpc),
    ));
  }

  Future<void> _resetClient() async {
    await state.client?.dispose();
  }
}
