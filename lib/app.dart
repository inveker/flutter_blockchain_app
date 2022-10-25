import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/router/app_router.dart';
import 'package:web3_context/models/chain/chain_model.dart';
import 'package:web3_context/web3_context.dart';

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
    final appContext = _appRouter.navigatorKey.currentState?.context ?? context;
    return Web3Context(
      appContext: appContext,
      chains: [
        ChainModel(
          id: 1,
          name: 'Mainnet',
          rpcUrl: 'https://rpc.ankr.com/eth',
          nativeCurrencySymbol: 'ETH',
          nativeCurrencyDecimals: 18,
          blockExplorerUrl: 'https://etherscan.io',
        ),
        ChainModel(
          id: 137,
          name: 'Polygon Mainnet',
          rpcUrl: 'https://polygon-rpc.com/',
          nativeCurrencySymbol: 'MATIC',
          nativeCurrencyDecimals: 18,
          blockExplorerUrl: 'https://polygonscan.com/',
        ),
      ],
      updateDialog: Material(
        child: Center(
          child: Container(
            child: Text('UPDATED'),
          ),
        ),
      ),
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
