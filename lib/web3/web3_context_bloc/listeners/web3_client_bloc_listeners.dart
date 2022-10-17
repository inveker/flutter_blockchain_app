import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/chain/chain_bloc.dart';
import 'package:flutter_blockchain_app/bloc/web3_client/web3_client_bloc.dart';

class Web3ClientBlocListeners {
  static BlocListener<Web3ClientBloc, Web3ClientState> clientChanged() {
    return BlocListener<Web3ClientBloc, Web3ClientState>(
      listenWhen: (p, n) => p.client != n.client,
      listener: (context, state) async {
        if (state.client != null) {
          final chainBloc = context.read<ChainBloc>();

          final supportedChains = chainBloc.chains;
          final currentChainId = (await state.client!.getChainId()).toInt();

          if (currentChainId != chainBloc.state.currentChain.id) {
            final chain = supportedChains.firstWhere(
              (chain) => chain.id == currentChainId,
              orElse: () => supportedChains.first,
            );
            chainBloc.add(ChainEvent.switchChain(chain));
          }
        }
      },
    );
  }
}
