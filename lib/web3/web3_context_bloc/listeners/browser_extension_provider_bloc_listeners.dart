import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/chain/chain_bloc.dart';
import 'package:flutter_blockchain_app/bloc/credentials/credentials_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_connection/wallet_connection_bloc.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/rpc_call_switch_chain_strategy.dart';

class BrowserExtensionProviderBlocListeners {
  static BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState> isConnectedChanged() {
    return BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState>(
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

  static BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState> rpcServiceChanged() {
    return BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState>(
      listenWhen: (p, n) => p.rpcService != n.rpcService && n.rpcService != null,
      listener: (context, state) {
        final rpcBloc = context.read<RpcBloc>();
        rpcBloc.add(RpcEvent.set(state.rpcService));
      },
    );
  }

  static BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState> credentialsChanged() {
    return BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState>(
      listenWhen: (p, n) => p.credentials != n.credentials && n.credentials != null,
      listener: (context, state) {
        final credentialsBloc = context.read<CredentialsBloc>();
        credentialsBloc.add(CredentialsEvent.set(state.credentials));
      },
    );
  }
}
