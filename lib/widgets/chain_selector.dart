import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/repositories/chains_repository.dart';

class ChainSelector extends StatelessWidget {
  const ChainSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chains = context.read<ChainsRepository>().chains;
    return BlocBuilder<NetworkBloc, NetworkState>(
      buildWhen: (p, n) => p.currentChain != n.currentChain,
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton<ChainModel>(
            onChanged: (chain) {
              context.read<NetworkBloc>().add(NetworkEvent.switchChain(chain!));
            },
            value: state.currentChain,
            items: [
              for (final chain in chains)
                DropdownMenuItem(
                  child: Text(chain.name),
                  value: chain,
                ),
            ],
          ),
        );
      },
    );
  }
}
