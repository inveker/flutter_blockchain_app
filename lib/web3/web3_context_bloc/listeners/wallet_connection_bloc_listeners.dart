import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/chain/chain_bloc.dart';
import 'package:flutter_blockchain_app/bloc/credentials/credentials_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_connection/wallet_connection_bloc.dart';
import 'package:flutter_blockchain_app/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';

class WalletConnectionBlocListeners {
  static BlocListener<WalletConnectionBloc, WalletConnectionState> logout() {
    return BlocListener<WalletConnectionBloc, WalletConnectionState>(
      listenWhen: (p, n) => p.hasWalletConnection == true && n.hasWalletConnection == false,
      listener: (context, state) async {
        final chainBloc = context.read<ChainBloc>();
        final rpcBloc = context.read<RpcBloc>();
        final credentialsBloc = context.read<CredentialsBloc>();
        final browserExtensionProviderBloc = context.read<BrowserExtensionProviderBloc>();
        final walletConnectProviderBloc = context.read<WalletConnectProviderBloc>();

        chainBloc.add(ChainEvent.setSwitchChainStrategy(null));
        credentialsBloc.add(CredentialsEvent.set(null));
        rpcBloc.add(RpcEvent.createFromUrl(chainBloc.state.currentChain.rpcUrl));

        if(browserExtensionProviderBloc.state.isConnected) {
          browserExtensionProviderBloc.add(BrowserExtensionProviderEvent.reset());
        }

        if(walletConnectProviderBloc.state.isConnected) {
          walletConnectProviderBloc.add(WalletConnectProviderEvent.reset());
        }
      },
    );
  }
}
