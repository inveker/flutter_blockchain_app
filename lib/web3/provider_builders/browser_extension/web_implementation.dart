import 'package:flutter/foundation.dart';
import 'package:web3_ethereum/web3_ethereum.dart';
import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web3dart_ethereum/web3dart_ethereum.dart';

class BrowserExtensionProviderBuilder {
  late final Web3Ethereum _web3ethereum;

  BrowserExtensionProviderBuilder() {
    _web3ethereum  = Web3Ethereum();
  }

  bool isSupported() {
    return kIsWeb;
  }

  bool isInstalled() {
    return Web3Ethereum.isSupported;
  }

  RpcService buildRpcService() {
    return Web3EthereumRpc(_web3ethereum);
  }

  Future<CredentialsWithKnownAddress> buildCredentials() async {
    final accounts = await _web3ethereum.connect();
    return Web3EthereumCredentials(
      _web3ethereum,
      addressHex: accounts.first,
    );
  }
}