import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/widgets/chain_selector.dart';
import 'package:flutter_blockchain_app/widgets/wallet_connect_button.dart';
import 'package:flutter_blockchain_app/widgets/wallet_logout_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<NetworkBloc, NetworkState>(
              buildWhen: (p, n) => p.hasWalletConnection != n.hasWalletConnection,
              builder: (context, state) {
                return Text('Wallet connection: ${state.hasWalletConnection}');
              },
            ),
            WalletConnectButton(),
            ChainSelector(),
            BlocBuilder<NetworkBloc, NetworkState>(
              buildWhen: (p, n) => p.hasWalletConnection != n.hasWalletConnection,
              builder: (context, state) {
                return state.hasWalletConnection ? WalletLogoutButton() : SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
