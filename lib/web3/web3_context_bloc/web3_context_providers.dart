import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/credentials/credentials_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/bloc/rpc/rpc_bloc.dart';
import 'package:flutter_blockchain_app/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/web3_client/web3_client_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/repositories/chains_repository.dart';

class Web3ContextProviders extends StatelessWidget {
  final List<ChainModel> chains;
  final Widget child;

  const Web3ContextProviders({
    Key? key,
    required this.chains,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ChainsRepository>(
          create: (context) => ChainsRepository(chains),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<NetworkBloc>(
            create: (context) => NetworkBloc(
              chains: context.read<ChainsRepository>().chains,
            ),
          ),
          BlocProvider<RpcBloc>(
            create: (context) => RpcBloc(
              rpcUrl: context.read<NetworkBloc>().state.currentChain.rpcUrl,
            ),
          ),
          BlocProvider<Web3ClientBloc>(
            create: (context) => Web3ClientBloc(),
          ),
          BlocProvider<CredentialsBloc>(
            create: (context) => CredentialsBloc(),
          ),
          BlocProvider<BrowserExtensionProviderBloc>(
            create: (context) => BrowserExtensionProviderBloc(),
          ),
          BlocProvider<WalletConnectProviderBloc>(
            create: (context) => WalletConnectProviderBloc(),
          ),
        ],
        child: child,
      ),
    );
  }
}
