import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/web3/switch_chain_strategies/switch_chain_strategy.dart';
import 'package:web3dart/json_rpc.dart';

class RpcCallSwitchChainStrategy implements SwitchChainStrategy {
  final RpcService rpcService;

  RpcCallSwitchChainStrategy({
    required this.rpcService,
  });

  @override
  Future<bool> execute(ChainModel chain) async {
    await rpcService.call('wallet_switchEthereumChain', [
      {
        'chainId': chain.getHexId(),
      }
    ]);
    return true;
  }
}
