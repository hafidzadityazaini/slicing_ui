import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selamat Pagi", 
            style: TextStyle(fontSize: 20),),
            
            Text("Fulan bin Fulan", 
            style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(width: 5,),
        IconButton(onPressed: () {}, icon: Icon(LucideIcons.shoppingCart500))
      ],);
  }
}