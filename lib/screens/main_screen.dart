import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/widgets/chain_selector.dart';
import 'package:flutter_blockchain_app/widgets/wallet_connect_button.dart';
import 'package:flutter_blockchain_app/widgets/wallet_logout_button.dart';
import 'package:web3_context/bloc/rpc/rpc_bloc.dart';
import 'package:web3_context/bloc/wallet_connection/wallet_connection_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<WalletConnectionBloc, WalletConnectionState>(
              buildWhen: (p, n) => p.hasWalletConnection != n.hasWalletConnection,
              builder: (context, state) {
                return Text('Wallet connection: ${state.hasWalletConnection}');
              },
            ),
            WalletConnectButton(),
            ChainSelector(),
            BlocBuilder<WalletConnectionBloc, WalletConnectionState>(
              buildWhen: (p, n) => p.hasWalletConnection != n.hasWalletConnection,
              builder: (context, state) {
                return state.hasWalletConnection ? WalletLogoutButton() : SizedBox();
              },
            ),
            BlocBuilder<WalletConnectionBloc, WalletConnectionState>(
              buildWhen: (p, n) => p.hasWalletConnection != n.hasWalletConnection,
              builder: (context, state) {
                if(state.hasWalletConnection) {
                  return ElevatedButton(
                    child: Text('call'),
                    onPressed: () async {
                      final responce = await context.read<RpcBloc>().state.rpcService!.call('eth_call', [{
                        'to': '0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984',
                        'data': '0x313ce567',
                      }, 'latest']);
                      print('response ${responce.result}');
                    },
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
