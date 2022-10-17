import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/switch_chain_strategy.dart';
import 'package:web3dart/json_rpc.dart';

class RpcCallSwitchChainStrategy implements SwitchChainStrategy {
  final RpcService rpcService;

  RpcCallSwitchChainStrategy({
    required this.rpcService,
  });

  bool _isChainNotExistsException(RPCError e) {
    return e.message.contains('wallet_addEthereumChain');
  }

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
      if(!_isChainNotExistsException(e)) rethrow;
      final response = await rpcService.call('wallet_addEthereumChain', [
        {
          'chainId': chain.getHexId(),
          'chainName': chain.name,
          'rpcUrls': [chain.rpcUrl],
          'nativeCurrency': {
            'symbol': chain.nativeCurrencySymbol,
            'decimals': chain.nativeCurrencyDecimals
          },
          if(chain.blockExplorerUrl != null) 'blockExplorerUrls': [chain.blockExplorerUrl],
        }
      ]);
      return response.result == null;
    }
  }
}
