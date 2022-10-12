part of 'web3_client_bloc.dart';

@freezed
class Web3ClientEvent with _$Web3ClientEvent {
  factory Web3ClientEvent.set(Web3Client client) = Web3ClientSetEvent;

  factory Web3ClientEvent.createFromRpc(RpcService rpc) = Web3ClientCreateFromRpcEvent;
}
