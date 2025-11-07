import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slicingui3/komponen/buttonbar.dart.dart';
import 'package:slicingui3/komponen/kartukai.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/test_icons.dart';
import 'package:slicingui3/komponen/menuatas.dart';
import 'package:slicingui3/komponen/mnitem.dart';
import 'package:slicingui3/komponen/mnkereta.dart';
import 'package:slicingui3/komponen/trip.dart';
import 'package:slicingui3/komponen/banner.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/stasiun.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Menuatas(),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      warna: Colors.blueGrey,
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Whoosh",
                      warna: Colors.blueGrey,
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Antar Kota",
                      warna: Colors.blueGrey,
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "MRT",
                      warna: Colors.blueGrey,
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Bandara",
                      warna: Colors.blueGrey,
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "LRT",
                      warna: Colors.blueGrey,
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Kommuter",
                      warna: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
            ),
            //--ini menu item
            SizedBox(height: 30),
            Mnitem(),
            Trip(),
            
            Padding(padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Promo Terbaru", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.5, color: Colors.blueGrey),
                  ),
                  child: Text("Lihat Semua", style: TextStyle(color: Colors.blueGrey),),
                )
              ],
            ),
            ),
            banner1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Buttonbar(text: 'Beranda', icon: Icon(LucideIcons.house)),
            Buttonbar(text: 'Kereta', icon: Icon(LucideIcons.trainFront)),
            Buttonbar(text: 'Promo', icon: Icon(LucideIcons.circleEllipsis)),
            Buttonbar(text: 'Akun', icon: Icon(LucideIcons.personStanding)),
            Buttonbar(text: 'Tiket', icon: Icon(LucideIcons.ticket)),
          ],
        ),
      ),
    );
  }
}