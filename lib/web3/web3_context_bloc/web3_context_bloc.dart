import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/browser_extension_provider_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/network_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/rpc_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/walletconnect_provider_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/web3_context_providers.dart';

class Web3ContextBloc extends StatelessWidget {
  final List<ChainModel> chains;
  final Widget child;

  const Web3ContextBloc({
    Key? key,
    required this.chains,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Web3ContextProviders(
      chains: chains,
      child: MultiBlocListener(
        listeners: [
          NetworkBlocListeners.currentChainChanged(),
          NetworkBlocListeners.logout(),
          RpcBlocListeners.rpcServiceChanged(),
          BrowserExtensionProviderBlocListeners.isConnectedChanged(),
          WalletConnectProviderBlocListeners.isConnectedChanged(),
        ],
        child: child,
      ),
    );
  }
}
