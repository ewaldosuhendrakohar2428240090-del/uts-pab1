class Kuliner {
  final String name;
  final String asal;
  final String bahanUtama;
  final String disajikan;
  final String deskripsi;
  final String imageAsset;
  final List<String> imageUrls;
  bool isFavorite;

  Kuliner({
    required this.name,
    required this.asal,
    required this.bahanUtama,
    required this.disajikan,
    required this.deskripsi,
    required this.imageAsset,
    required this.imageUrls,
    this.isFavorite = true,
  });
}
