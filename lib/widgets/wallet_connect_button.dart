import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/repositories/chains_repository.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/walletconnect/walletconnect_provider_builder.dart';

class WalletConnectButton extends StatelessWidget {
  const WalletConnectButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Connect wallet'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return Builder(builder: (context) {
              final browserExtensionProviderIsSupported = context.select<BrowserExtensionProviderBloc, bool>((bloc) => bloc.state.isSupported);
              return Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.white,
                  child: Row(
                    children: [
                      if (browserExtensionProviderIsSupported) _BrowserExtensionProviderButton(),
                      _WalletConnectProviderButton(),
                    ],
                  ),
                ),
              );
            });
          },
        );
      },
    );
  }
}

class _BrowserExtensionProviderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrowserExtensionProviderBloc, BrowserExtensionProviderState>(
      buildWhen: (p, n) => p.isInstalled != n.isInstalled,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<BrowserExtensionProviderBloc>().add(BrowserExtensionProviderEvent.connect());
          },
          child: Container(
            width: 80,
            height: 80,
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Extension'),
                Text(state.isInstalled ? 'Connect' : 'Install'),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _WalletConnectProviderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<WalletConnectProviderBloc>().add(WalletConnectProviderEvent.connect());
      },
      child: Container(
        width: 80,
        height: 80,
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WalletConnect'),
          ],
        ),
      ),
    );
  }
}
