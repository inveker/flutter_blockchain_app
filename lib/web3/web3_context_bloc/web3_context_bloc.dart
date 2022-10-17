import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/browser_extension_provider_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/chain_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/wallet_connection_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/rpc_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/wallet_external_updates_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/walletconnect_provider_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/listeners/web3_client_bloc_listeners.dart';
import 'package:flutter_blockchain_app/web3/web3_context_bloc/web3_context_providers.dart';

class Web3ContextBloc extends StatelessWidget {
  final List<ChainModel> chains;
  final void Function(String account)? onExternalAccountChanged;
  final void Function(int chainId)? onExternalChainChanged;

  final Widget child;

  const Web3ContextBloc({
    Key? key,
    required this.chains,
    required this.child,
    this.onExternalAccountChanged,
    this.onExternalChainChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Web3ContextProviders(
      chains: chains,
      child: MultiBlocListener(
        listeners: [
          //ChainBlocListeners
          ChainBlocListeners.currentChainChanged(),
          //WalletConnectionBlocListeners
          WalletConnectionBlocListeners.logout(),
          //RpcBlocListeners
          RpcBlocListeners.rpcServiceChanged(),
          //Web3ClientBlocListeners
          Web3ClientBlocListeners.clientChanged(),
          //BrowserExtensionProviderBlocListeners
          BrowserExtensionProviderBlocListeners.isConnectedChanged(),
          BrowserExtensionProviderBlocListeners.rpcServiceChanged(),
          BrowserExtensionProviderBlocListeners.credentialsChanged(),
          //WalletConnectProviderBlocListeners
          WalletConnectProviderBlocListeners.isConnectedChanged(),
          WalletConnectProviderBlocListeners.rpcServiceChanged(),
          WalletConnectProviderBlocListeners.credentialsChanged(),
          WalletConnectProviderBlocListeners.sessionUpdated(),
          //WalletExternalUpdatesBlocListeners
          WalletExternalUpdatesBlocListeners.accountUpdated(onExternalAccountChanged),
          WalletExternalUpdatesBlocListeners.chainUpdated(onExternalChainChanged),
        ],
        child: child,
      ),
    );
  }
}
