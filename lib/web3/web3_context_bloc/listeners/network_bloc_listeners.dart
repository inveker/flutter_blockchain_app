import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';

class NetworkBlocListeners {
  static BlocListener<NetworkBloc, NetworkState> currentChainChanged() {
    return BlocListener<NetworkBloc, NetworkState>(
      listenWhen: (p, n) => p.currentChain != n.currentChain,
      listener: (context, state) async {
        final rpcBloc = context.read<RpcBloc>();

        if (!state.hasWalletConnection) {
          rpcBloc.add(RpcEvent.createFromUrl(state.currentChain.rpcUrl));
        }
      },
    );
  }

  static BlocListener<NetworkBloc, NetworkState> logout() {
    return BlocListener<NetworkBloc, NetworkState>(
      listenWhen: (p, n) => p.hasWalletConnection != n.hasWalletConnection && n.hasWalletConnection == false,
      listener: (context, state) async {
        final rpcBloc = context.read<RpcBloc>();
        final browserExtensionProviderBloc = context.read<BrowserExtensionProviderBloc>();
        final walletConnectProviderBloc = context.read<WalletConnectProviderBloc>();

        if(browserExtensionProviderBloc.state.isConnected) {
          browserExtensionProviderBloc.add(BrowserExtensionProviderEvent.reset());
        }
        if(walletConnectProviderBloc.state.isConnected) {
          walletConnectProviderBloc.add(WalletConnectProviderEvent.reset());
        }

        rpcBloc.add(RpcEvent.createFromUrl(state.currentChain.rpcUrl));
      },
    );
  }
}
