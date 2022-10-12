import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';

class BrowserExtensionProviderBuilder {
  BrowserExtensionProviderBuilder() {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  bool isSupported() {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  bool isInstalled() {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  RpcService buildRpcService() {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  Future<CredentialsWithKnownAddress> buildCredentials() async {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }
}