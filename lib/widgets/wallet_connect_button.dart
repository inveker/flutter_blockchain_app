import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:web3_context/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:web3_context/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';

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
                  width: 600,
                  height: 600,
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
            width: 280,
            height: 280,
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
        width: 280,
        height: 280,
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WalletConnect'),
            BlocBuilder<WalletConnectProviderBloc, WalletConnectProviderState>(
              buildWhen: (p, n) => p.displayUri != n.displayUri,
              builder: (context, state) {
                if(state.displayUri != null) {
                  return QrImage(data: state.displayUri!, size: 200,);
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
