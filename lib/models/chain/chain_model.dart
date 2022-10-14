import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_model.freezed.dart';

@freezed
class ChainModel with _$ChainModel {
  const ChainModel._();

  factory ChainModel({
    required int id,
    required String name,
    String? image,
    String? defaultRpcUrl,
  }) = _ChainModel;

  String getHexId() {
    return '0x${id.toRadixString(16)}';
  }
}