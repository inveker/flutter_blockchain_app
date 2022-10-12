class ChainModel {
  final int id;
  final String name;
  final String? image;
  final String? defaultRpcUrl;

  ChainModel({
    required this.id,
    required this.name,
    this.image,
    this.defaultRpcUrl,
  });

  String getHexId() {
    return '0x${id.toRadixString(16)}';
  }
}