import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/credentials/credentials_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/web3_client/web3_client_bloc.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/rpc_call_switch_chain_strategy.dart';

class BrowserExtensionProviderBlocListeners {
  static BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState> isConnectedChanged() {
    return BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState>(
      listenWhen: (p, n) => p.isConnected != n.isConnected,
      listener: (context, state) {
        final rpcBloc = context.read<RpcBloc>();
        final credentialsBloc = context.read<CredentialsBloc>();
        final networkBloc = context.read<NetworkBloc>();

        if (state.isConnected) {
          networkBloc.add(NetworkEvent.walletConnected());
          networkBloc.add(
            NetworkEvent.setSwitchChainStrategy(
              RpcCallSwitchChainStrategy(
                rpcService: state.rpcService!,
              ),
            ),
          );
        }

        rpcBloc.add(RpcEvent.set(state.rpcService));
        credentialsBloc.add(CredentialsEvent.set(state.credentials));
      },
    );
  }
}