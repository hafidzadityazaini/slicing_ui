import 'package:flutter/material.dart';

class menuApp extends StatelessWidget {
  final String gambar;
  const menuApp({super.key, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      Positioned(child: SizedBox(
        height: 60, 
        width: 60, 
        child: Image.asset(gambar),
        ),
        ),
      ],
    );
  }
}