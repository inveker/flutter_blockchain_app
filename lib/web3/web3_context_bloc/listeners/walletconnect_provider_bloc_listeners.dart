import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/chain/chain_bloc.dart';
import 'package:flutter_blockchain_app/bloc/credentials/credentials_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_connection/wallet_connection_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_external_updates/wallet_external_updates_bloc.dart';
import 'package:flutter_blockchain_app/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/rpc_call_switch_chain_strategy.dart';

class WalletConnectProviderBlocListeners {
  static BlocListener<WalletConnectProviderBloc, WalletConnectProviderState> isConnectedChanged() {
    return BlocListener<WalletConnectProviderBloc, WalletConnectProviderState>(
      listenWhen: (p, n) => p.isConnected != n.isConnected,
      listener: (context, state) {
        final chainBloc = context.read<ChainBloc>();
        final walletConnectionBloc = context.read<WalletConnectionBloc>();

        if (state.isConnected) {
          walletConnectionBloc.add(WalletConnectionEvent.walletConnected());
          chainBloc.add(
            ChainEvent.setSwitchChainStrategy(
              RpcCallSwitchChainStrategy(
                rpcService: state.rpcService!,
              ),
            ),
          );
        }
      },
    );
  }

  static BlocListener<WalletConnectProviderBloc, WalletConnectProviderState> rpcServiceChanged() {
    return BlocListener<WalletConnectProviderBloc, WalletConnectProviderState>(
      listenWhen: (p, n) => p.rpcService != n.rpcService,
      listener: (context, state) {
        final rpcBloc = context.read<RpcBloc>();
        rpcBloc.add(RpcEvent.set(state.rpcService));
      },
    );
  }

  static BlocListener<WalletConnectProviderBloc, WalletConnectProviderState> credentialsChanged() {
    return BlocListener<WalletConnectProviderBloc, WalletConnectProviderState>(
      listenWhen: (p, n) => p.credentials != n.credentials,
      listener: (context, state) {
        final credentialsBloc = context.read<CredentialsBloc>();
        credentialsBloc.add(CredentialsEvent.set(state.credentials));
      },
    );
  }

  static BlocListener<WalletConnectProviderBloc, WalletConnectProviderState> sessionUpdated() {
    return BlocListener<WalletConnectProviderBloc, WalletConnectProviderState>(
      listenWhen: (p, n) => p.sessionUpdate != n.sessionUpdate,
      listener: (context, state) {
        final chainBloc = context.read<ChainBloc>();
        final credentialsBloc = context.read<CredentialsBloc>();
        final walletExternalUpdatesBloc = context.read<WalletExternalUpdatesBloc>();

        final sessionUpdate = state.sessionUpdate!;

        if(sessionUpdate.approved) {
          if(sessionUpdate.chainId != null) {
            final newChainId = int.parse(sessionUpdate.chainId!);
            final currentChainId = chainBloc.state.currentChain.id;
            if(newChainId != currentChainId) {
              walletExternalUpdatesBloc.add(WalletExternalUpdatesEvent.chain(newChainId));
            }
          }

          if(sessionUpdate.accounts.isNotEmpty) {
            final newAccount = sessionUpdate.accounts.first;
            final currentAccount = credentialsBloc.state.credentials?.address.hex;
            if(newAccount != currentAccount) {
              walletExternalUpdatesBloc.add(WalletExternalUpdatesEvent.account(newAccount));
            }
          }
        }
      },
    );
  }
}