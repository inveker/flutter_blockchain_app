import 'package:web3dart/json_rpc.dart';
import 'package:web3dart/web3dart.dart';

export 'unsupported_placeholder.dart' if (dart.library.html) 'web_implementation.dart';


abstract class BrowserExtensionProviderBuilderInterface {
  bool isSupported();

  bool isInstalled();

  RpcService buildRpcService();

  Future<CredentialsWithKnownAddress> buildCredentials();

  CredentialsWithKnownAddress restoreCredentials(String account);
}