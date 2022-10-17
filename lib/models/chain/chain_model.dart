import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_model.freezed.dart';

@freezed
class ChainModel with _$ChainModel {
  const ChainModel._();

  factory ChainModel({
    required int id,
    required String name,
    required String rpcUrl,
    required String nativeCurrencySymbol,
    required int nativeCurrencyDecimals,
    String? blockExplorerUrl,
    String? image,
  }) = _ChainModel;

  String getHexId() {
    return '0x${id.toRadixString(16)}';
  }
}