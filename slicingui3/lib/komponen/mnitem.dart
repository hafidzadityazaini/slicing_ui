import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicingui3/komponen/mnkereta.dart';

class Mnitem extends StatelessWidget {
  const Mnitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Mnkereta(icon: Icon(LucideIcons.hotel), text: "Hotel", warna: Colors.blueGrey.withOpacity(0.2)),
          Mnkereta(icon: Icon(LucideIcons.creditCard), text: "Kartu", warna: Colors.blueGrey.withOpacity(0.2)),
          Mnkereta(icon: Icon(LucideIcons.gift), text: "Logistik", warna: Colors.blueGrey.withOpacity(0.2)),
          Mnkereta(icon: Icon(LucideIcons.circleEllipsis), text: "Lainnya", warna: Colors.blueGrey.withOpacity(0.2))
        ],
      ),
    );
  }
}