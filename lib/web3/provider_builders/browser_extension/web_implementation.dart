import 'package:flutter/foundation.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/browser_extension/browser_extension_provider_builder.dart';
import 'package:web3_ethereum/web3_ethereum.dart';
import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web3dart_ethereum/web3dart_ethereum.dart';

class BrowserExtensionProviderBuilder implements BrowserExtensionProviderBuilderInterface{
  late final Web3Ethereum _web3ethereum;

  BrowserExtensionProviderBuilder() {
    _web3ethereum  = Web3Ethereum();
  }

  @override
  bool isSupported() {
    return kIsWeb;
  }

  @override
  bool isInstalled() {
    return Web3Ethereum.isSupported;
  }

  @override
  RpcService buildRpcService() {
    return Web3EthereumRpc(_web3ethereum);
  }

  @override
  Future<CredentialsWithKnownAddress> buildCredentials() async {
    final accounts = await _web3ethereum.connect();
    return Web3EthereumCredentials(
      _web3ethereum,
      addressHex: accounts.first,
    );
  }

  @override
  CredentialsWithKnownAddress restoreCredentials(String account) {
    return Web3EthereumCredentials(
      _web3ethereum,
      addressHex: account,
    );
  }
}