import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/web3_client/web3_client_bloc.dart';

class RpcBlocListeners {
  static BlocListener<RpcBloc, RpcState> rpcServiceChanged() {
    return BlocListener<RpcBloc, RpcState>(
      listenWhen: (p, n) => p.rpcService != n.rpcService,
      listener: (context, state) {
        final web3ClientBloc = context.read<Web3ClientBloc>();
        final rpcService = state.rpcService;
        if (rpcService != null) {
          web3ClientBloc.add(Web3ClientEvent.createFromRpc(rpcService));
        } else {
          web3ClientBloc.add(Web3ClientEvent.set(null));
        }
      },
    );
  }
}