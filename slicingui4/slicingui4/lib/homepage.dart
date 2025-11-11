import 'package:flutter/material.dart';
import 'package:slicingui4/navbar.dart';
import 'package:slicingui4/menu.dart';
import 'package:slicingui4/cardmn.dart';
import 'package:slicingui4/banner.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- 1. NAVBAR ---
            NavBar1(),

            // --- 2. KONTEN UTAMA (WALLET & 5 IKON) ---
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Latar belakang putih bersih
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // --- 5 IKON (RESPONSIF DENGAN WRAP) ---
                    Wrap(
                      spacing: 16.0, // Jarak horizontal
                      runSpacing: 16.0, // Jarak vertikal jika turun baris
                      alignment: WrapAlignment.spaceAround,
                      children: [
                        _buildServiceIcon(
                            Icons.local_drink, "Minuman", Colors.orange),
                        _buildServiceIcon(
                            Icons.fastfood, "Makanan", Colors.green),
                        _buildServiceIcon(
                            Icons.ramen_dining, "Fast Food", Colors.red),
                        _buildServiceIcon(
                            Icons.shopping_basket, "Buah/Sayur", Colors.blue),
                        _buildServiceIcon(
                            Icons.storefront, "Restoran", Colors.cyan),
                      ],
                    ),
                    const Divider(
                      height: 35,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                    // --- SALDO & KOIN ---
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/wallet.png',
                                width: 30, height: 30),
                            const SizedBox(width: 10),
                            const Text(
                              "Rp. 500.000",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "0 coins",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Pemisah antar bagian
            SizedBox(height: 10),

            // --- 3. MENU 8 IKON ---
            Menu(),

            // Pemisah antar bagian
            SizedBox(height: 10),

            // --- 4. SUPER DEAL CARD ---
            CardMn(),

            // Pemisah antar bagian
            SizedBox(height: 10),

            // --- 5. BANNER ---
            Banner1(),

            // Padding di bagian bawah
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Widget private untuk membuat 5 ikon layanan di atas
  Widget _buildServiceIcon(IconData icon, String label, Color color) {
    return GestureDetector(
      onTap: () {
        print("$label di-tap!");
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Icon(
              icon,
              color: color,
              size: 30,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}