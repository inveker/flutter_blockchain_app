import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';

class NetworkBlocListeners {
  static BlocListener<NetworkBloc, NetworkState> currentChainChanged() {
    return BlocListener<NetworkBloc, NetworkState>(
      listenWhen: (p, n) => p.currentChain != n.currentChain,
      listener: (context, state) async {
        final rpcBloc = context.read<RpcBloc>();

        if (!state.hasWalletConnection) {
          final defaultRpcUrl = state.currentChain.defaultRpcUrl;
          if (defaultRpcUrl != null) {
            rpcBloc.add(RpcEvent.createFromUrl(defaultRpcUrl));
          } else {
            rpcBloc.add(RpcEvent.set(null));
          }
        }
      },
    );
  }
}