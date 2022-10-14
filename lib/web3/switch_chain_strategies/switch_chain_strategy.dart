import 'package:flutter_blockchain_app/models/chain/chain_model.dart';

abstract class SwitchChainStrategy {
  Future<bool> execute(ChainModel chain);
}