import 'package:flutter/material.dart';
import 'package:flutter_application_1/komponen/bannerInfo.dart';
import 'package:flutter_application_1/komponen/komponen_ui_1.dart';
import 'package:flutter_application_1/komponen/menuApp.dart';
import 'package:flutter_application_1/komponen/saldoApp.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330, 
              width: double.infinity, 
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter, 
                  end: AlignmentDirectional.bottomCenter, 
                  colors: [
                    Colors.greenAccent,
                    const Color.fromARGB(255, 250, 152, 185),
                    Colors.white,
                  ],
              ),
              ),
              child: Column(
                children: [SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    spacing: 10,
                    children: [
                      Expanded( child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 229, 229),
                            hintText: "Mau Makan Apa Hari Ini?",
                            hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      CircleAvatar(foregroundImage: AssetImage("assets/burger.png"),),
                      ],
                      ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    spacing: 25 ,children: [
                    Text("Diskon Hari Ini!", 
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 140, 
                      width: 140, 
                      child: Image.asset("assets/fast food.png"),
                  ),
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KomponenUi1(logo: "assets/burger.png", text: "Makanan"), 
                    KomponenUi1(logo: "assets/store.png", text: "Restoran"),
                    KomponenUi1(logo: "assets/orange-juice.png", text: "Minuman"),
                    KomponenUi1(logo: "assets/vegetables.png", text: "Buah & Sayur"),
                      ],
                    ),
                ),
                ],
              ),
            ),  
          SizedBox(height: 10),
          SaldoApp(),
          SizedBox(height: 25,),
          Column(
            spacing: 20,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [menuApp(gambar: "assets/burger.png",), menuApp(gambar: "assets/burger.png",), menuApp(gambar: "assets/burger.png",), menuApp(gambar: "assets/burger.png",),],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [menuApp(gambar: "assets/apple.png",), menuApp(gambar: "assets/apple.png",), menuApp(gambar: "assets/apple.png",), menuApp(gambar: "assets/apple.png",),],),
              ],
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo Hari Ini!", 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 170, 
              width: double.infinity,  
              child: PageView(children: [
                Bannerinfo(banner: "assets/banner1.png",),
                Bannerinfo(banner: "assets/banner2.png",),
                ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              IconButton(
                onPressed: () {}, 
                icon: SizedBox(height: 30,  child: Image.asset("assets/home.png"),),
              ),
              IconButton(
              onPressed: () {}, 
              icon: SizedBox(height: 35, child: Image.asset("assets/promo.png"),),
              ),
              IconButton(
              onPressed: () {}, 
              icon: SizedBox(height: 30,child: Image.asset("assets/chat.png"),),
              ),
              IconButton(
              onPressed: () {}, 
              icon: SizedBox(height: 35,child: Image.asset("assets/shopping-bag.png"),),
              ),
              // Yang Menggunakan Icon
              // IconButton(
              // onPressed: () {}, 
              // icon: Icon(Icons.home),
              // ),
              // IconButton(
              // onPressed: () {}, 
              // icon: Icon(Icons.discount),
              // ),
              // IconButton(
              // onPressed: () {}, 
              // icon: Icon(Icons.message),
              // ),
              // IconButton(
              // onPressed: () {}, 
              // icon: Icon(Icons.badge),
              // ),
            ],
          ),
      ),
    );
  }
}