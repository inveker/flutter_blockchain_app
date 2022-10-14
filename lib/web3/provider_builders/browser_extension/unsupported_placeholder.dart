import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';

class BrowserExtensionProviderBuilder {
  bool isSupported() {
    return false;
  }

  bool isInstalled() {
    return false;
  }

  RpcService buildRpcService() {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }

  Future<CredentialsWithKnownAddress> buildCredentials() async {
    throw UnimplementedError('BrowserExtensionProvider not supported');
  }
}