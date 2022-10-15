import 'dart:async';

import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web3dart_walletconnect/web3dart_walletconnect.dart';

class WalletConnectProviderBuilder {
  late final WalletConnect _walletConnect;

  WalletConnectProviderBuilder() {
    _walletConnect = WalletConnect(
      bridge: 'https://bridge.walletconnect.org',
      clientMeta: PeerMeta(
        name: 'WalletConnect',
        description: 'WalletConnect Developer App',
        url: 'https://walletconnect.org',
        icons: ['https://gblobscdn.gitbook.com/spaces%2F-LJJeCjcLrr53DcT1Ml7%2Favatar.png?alt=media'],
      ),
    );
  }

  WalletConnect get walletConnect => _walletConnect;

  WalletConnectSession get session => _walletConnect.session;

  WalletConnectProviderBuilder.fromSession({
    required WalletConnectSession session,
  }) {
    _walletConnect = WalletConnect(
      session: session,
    );
  }

  RpcService buildRpcService() {
    return WalletConnectRpc(_walletConnect);
  }

  Future<CredentialsWithKnownAddress> buildCredentials(
    void Function(String displayUri) readyConnection,
  ) async {
    final completer = Completer<List<String>>();
    _walletConnect.on(
      'connect',
      (SessionStatus session) => completer.complete(session.accounts),
    );
    await _walletConnect.createSession(
      onDisplayUri: readyConnection,
    );
    final accounts = await completer.future;
    return WalletConnectCredentials(
      EthereumWalletConnectProvider(_walletConnect),
      addressHex: accounts.first,
    );
  }

  CredentialsWithKnownAddress restoreCredentials() {
    return WalletConnectCredentials(
      EthereumWalletConnectProvider(_walletConnect),
      addressHex: _walletConnect.session.accounts.first,
    );
  }
}
