import 'package:flutter/material.dart';

class CardMn extends StatelessWidget {
  const CardMn({super.key});

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
              "Super deal hari ini",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 120, // Tentukan tinggi untuk list horizontal
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0, right: 6.0),
              children: [
                _buildDealCard(
                  "Promo Hebat",
                  "Diskon 50% di Resto",
                  [Colors.orange.shade300, Colors.red.shade400],
                ),
                _buildDealCard(
                  "Cashback Gede",
                  "Dapat 20rb Koin",
                  [Colors.blue.shade300, Colors.purple.shade400],
                ),
                _buildDealCard(
                  "Gratis Ongkir",
                  "Tanpa minimum belanja",
                  [Colors.green.shade300, Colors.teal.shade400],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget private untuk membuat card (cara pemula merapikan kode)
  Widget _buildDealCard(
      String title, String subtitle, List<Color> gradientColors) {
    return GestureDetector(
      onTap: () {
        print("$title di-tap!");
      },
      child: Container(
        width: 250, // Lebar setiap kartu
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: gradientColors.last.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}