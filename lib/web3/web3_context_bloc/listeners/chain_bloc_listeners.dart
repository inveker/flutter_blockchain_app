import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/chain/chain_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_connection/wallet_connection_bloc.dart';

class ChainBlocListeners {
  static BlocListener<ChainBloc, ChainState> currentChainChanged() {
    return BlocListener<ChainBloc, ChainState>(
      listenWhen: (p, n) => p.currentChain != n.currentChain,
      listener: (context, state) async {
        final rpcBloc = context.read<RpcBloc>();
        final walletConnectionBloc = context.read<WalletConnectionBloc>();

        if (!walletConnectionBloc.state.hasWalletConnection) {
          rpcBloc.add(RpcEvent.createFromUrl(state.currentChain.rpcUrl));
        }
      },
    );
  }
}
