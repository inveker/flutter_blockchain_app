import 'package:flutter_blockchain_app/web3/provider_builders/browser_extension/browser_extension_provider_builder.dart';
import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';

class BrowserExtensionProviderBuilder implements BrowserExtensionProviderBuilderInterface {
  @override
  bool isSupported() {
    return false;
  }

  @override
  bool isInstalled() {
    return false;
  }

  @override
  RpcService buildRpcService() {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  @override
  Future<CredentialsWithKnownAddress> buildCredentials() async {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  @override
  CredentialsWithKnownAddress restoreCredentials(String account) {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }
}