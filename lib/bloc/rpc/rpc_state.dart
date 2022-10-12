part of 'rpc_bloc.dart';

@freezed
class RpcState with _$RpcState {
  factory RpcState({
    RpcService? rpcService,
  }) = _RpcState;
}
