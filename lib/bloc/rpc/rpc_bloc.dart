import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web3dart/json_rpc.dart';
import 'package:http/http.dart' as http;

part 'rpc_bloc.freezed.dart';

part 'rpc_event.dart';

part 'rpc_state.dart';

class RpcBloc extends Bloc<RpcEvent, RpcState> {
  RpcBloc({
    String? rpcUrl,
  }) : super(RpcState()) {
    on<RpcSetEvent>(_set);
    on<RpcCreateFromUrlEvent>(_createFromUrl);

    if (rpcUrl != null) {
      add(RpcEvent.createFromUrl(rpcUrl));
    }
  }

  Future<void> _set(RpcSetEvent event, Emitter<RpcState> emit) async {
    emit(state.copyWith(
      rpcService: event.rpcService,
    ));
  }

  Future<void> _createFromUrl(RpcCreateFromUrlEvent event, Emitter<RpcState> emit) async {
    emit(state.copyWith(
      rpcService: JsonRPC(
        event.url,
        http.Client(),
      ),
    ));
  }
}
