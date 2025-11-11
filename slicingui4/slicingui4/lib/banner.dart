import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Promo Spesial Buatmu",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 160, // Tentukan tinggi untuk list horizontal
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0, right: 6.0),
              children: [
                _buildBannerImage('assets/banner-7.png'),
                _buildBannerImage('assets/banner-8.png'),
                _buildBannerImage('assets/banner-9.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget private untuk membuat gambar banner
  Widget _buildBannerImage(String imagePath) {
    return GestureDetector(
      onTap: () {
        print("Banner $imagePath di-tap!");
      },
      child: Container(
        width: 300, // Lebar setiap banner
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover, // Gunakan cover agar gambar mengisi penuh
          ),
        ),
      ),
    );
  }
}
