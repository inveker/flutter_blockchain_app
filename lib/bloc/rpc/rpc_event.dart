part of 'rpc_bloc.dart';

@freezed
class RpcEvent with _$RpcEvent {
  factory RpcEvent.set(RpcService? rpcService) = RpcSetEvent;

  factory RpcEvent.createFromUrl(String url) = RpcCreateFromUrlEvent;
}
