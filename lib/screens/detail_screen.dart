import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:uts_pab/models/kuliner.dart';

class DetailScreen extends StatelessWidget {
  final Kuliner modelKuliner;
  const DetailScreen({super.key, required this.modelKuliner});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F2EC),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image dari Image Asset
            Image.asset(
              modelKuliner.imageAsset,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            // Detail Info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Info Atas : Nama & Icon Favorit
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        modelKuliner.name,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite, color: Colors.red),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Info Tengah Row 1 : Asal
                  Row(
                    children: [
                      const Icon(Icons.place, color: Colors.red),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "Asal",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(child: Text(": ${modelKuliner.asal}")),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Info Tengah Row 2 : Bahan Utama
                  Row(
                    children: [
                      const Icon(Icons.eco, color: Colors.green),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "Bahan Utama",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(child: Text(": ${modelKuliner.bahanUtama}")),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Info Tengah Row 3 : Disajikan
                  Row(
                    children: [
                      const Icon(Icons.soup_kitchen, color: Color(0xFF8D6E63)),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "Disajikan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(child: Text(": ${modelKuliner.disajikan}")),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.brown.shade200),
                  const SizedBox(height: 16),

                  // Deskripsi
                  const Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    modelKuliner.deskripsi,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.brown.shade200),
                  const SizedBox(height: 16),

                  // Galeri
                  const Text(
                    "Galeri",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: modelKuliner.imageUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: modelKuliner.imageUrls[index],
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                width: 100,
                                height: 100,
                                color: Colors.grey.shade300,
                              ),
                              errorWidget: (context, url, error) => Container(
                                width: 100,
                                height: 100,
                                color: Colors.grey.shade300,
                                child: const Icon(Icons.error),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.brown.shade200),
                  const SizedBox(height: 16),

                  // Identitas Mahasiswa (Nama & NPM)
                  const Text(
                    "Identitas Mahasiswa",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Nama : Ewaldo Suhendra Kohar",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "NPM : 2428240090",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Kelas : SI5B",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Mata Kuliah : Pengembangan Aplikasi Bergerak I",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
