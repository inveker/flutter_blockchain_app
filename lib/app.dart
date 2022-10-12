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
import 'package:flutter_blockchain_app/router/app_router.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _Bloc(
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

class _Bloc extends StatelessWidget {
  final Widget child;

  const _Bloc({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ChainsRepository>(
          create: (context) => ChainsRepository([
            ChainModel(
              id: 1,
              name: 'Mainnet',
            ),
            ChainModel(
              id: 137,
              name: 'Polygon',
            ),
          ]),
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
              rpcUrl: context.read<NetworkBloc>().state.currentChain.defaultRpcUrl,
            ),
          ),
          BlocProvider<Web3ClientBloc>(
            create: (context) => Web3ClientBloc(),
          ),
          BlocProvider<CredentialsBloc>(
            create: (context) => CredentialsBloc(),
          ),
          BlocProvider<BrowserExtensionProviderBloc>(
            create: (context) => BrowserExtensionProviderBloc(
              networkBloc: context.read<NetworkBloc>(),
            ),
          ),
          BlocProvider<WalletConnectProviderBloc>(
            create: (context) => WalletConnectProviderBloc(
              networkBloc: context.read<NetworkBloc>(),
            ),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<NetworkBloc, NetworkState>(
              listenWhen: (p, n) => p.currentChain != n.currentChain,
              listener: (context, state) async {
                final rpcBloc = context.read<RpcBloc>();

                if (!state.hasWalletConnection) {
                  final defaultRpcUrl = state.currentChain.defaultRpcUrl;
                  if (defaultRpcUrl != null) {
                    rpcBloc.add(RpcEvent.createFromUrl(defaultRpcUrl));
                  } else {
                    rpcBloc.add(RpcEvent.set(null));
                  }
                }
              },
            ),
            BlocListener<RpcBloc, RpcState>(
              listenWhen: (p, n) => p.rpcService != n.rpcService,
              listener: (context, state) {
                final web3ClientBloc = context.read<Web3ClientBloc>();
                final rpcService = state.rpcService;
                if (rpcService != null) {
                  web3ClientBloc.add(Web3ClientEvent.createFromRpc(rpcService));
                }
              },
            ),
            BlocListener<BrowserExtensionProviderBloc, BrowserExtensionProviderState>(
              listenWhen: (p, n) => p.isConnected != n.isConnected,
              listener: (context, state) {
                final rpcBloc = context.read<RpcBloc>();
                final credentialsBloc = context.read<CredentialsBloc>();

                rpcBloc.add(RpcEvent.set(state.rpcService));
                credentialsBloc.add(CredentialsEvent.set(state.credentials));
              },
            ),
            BlocListener<WalletConnectProviderBloc, WalletConnectProviderState>(
              listenWhen: (p, n) => p.isConnected != n.isConnected,
              listener: (context, state) {
                final rpcBloc = context.read<RpcBloc>();
                final credentialsBloc = context.read<CredentialsBloc>();

                rpcBloc.add(RpcEvent.set(state.rpcService));
                credentialsBloc.add(CredentialsEvent.set(state.credentials));
              },
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
