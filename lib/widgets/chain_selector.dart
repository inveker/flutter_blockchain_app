import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/chain/chain_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';

class ChainSelector extends StatelessWidget {
  const ChainSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chains = context.read<ChainBloc>().chains;
    return BlocBuilder<ChainBloc, ChainState>(
      buildWhen: (p, n) => p.currentChain != n.currentChain,
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton<ChainModel>(
            onChanged: (chain) {
              context.read<ChainBloc>().add(ChainEvent.switchChain(chain!));
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
