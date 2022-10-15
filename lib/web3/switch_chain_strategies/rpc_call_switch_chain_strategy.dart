import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/switch_chain_strategy.dart';
import 'package:web3dart/json_rpc.dart';

class RpcCallSwitchChainStrategy implements SwitchChainStrategy {
  static const int chainNotExistsErrorCode = 4902;

  final RpcService rpcService;

  RpcCallSwitchChainStrategy({
    required this.rpcService,
  });

  @override
  Future<bool> execute(ChainModel chain) async {
    try {
      final response = await rpcService.call('wallet_switchEthereumChain', [
        {
          'chainId': chain.getHexId(),
        }
      ]);
      return response.result == null;
    } on RPCError catch (e) {
      try {
        final response = await rpcService.call('wallet_addEthereumChain', [
          {
            'chainId': chain.getHexId(),
            'chainName': chain.name,
            'rpcUrls': [chain.rpcUrl],
            'nativeCurrency': {
              'symbol': chain.nativeCurrencySymbol,
              'decimals': 18
            },
            'blockExplorerUrls': [chain.blockExplorerUrls],
          }
        ]);
        return response.result == null;
      } catch(e) {
        rethrow;
      }
    }
  }
}
