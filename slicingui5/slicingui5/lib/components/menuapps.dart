import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicingui5/decoration/set.dart';

class Menuapps extends StatelessWidget {
  const Menuapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lihat semua promo",
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Componentmenu(iconapps: "assets/dollar.png", labels: "blabla"),
              Componentmenu(iconapps: "assets/dollar.png", labels: "blabla"),
              Componentmenu(iconapps: "assets/dollar.png", labels: "blabla"),
              Componentmenu(iconapps: "assets/dollar.png", labels: "blabla"),
              Componentmenu(iconapps: "assets/dollar.png", labels: "blabla"),
              Componentmenu(iconapps: "assets/dollar.png", labels: "blabla"),
            ],
          ),
        ],
      ),
    );
  }
}

class Componentmenu extends StatelessWidget {
  final String iconapps;
  final String labels;
  const Componentmenu({
    super.key,
    required this.iconapps,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ClassName.color5,
            image: DecorationImage(image: AssetImage("assets/V.png")),
          ),
        ),
        SizedBox(width: 10),
        Text("blabla"),
      ],
    );
  }
}
