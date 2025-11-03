import 'package:flutter/material.dart';

class KomponenUi1 extends StatelessWidget {
  final String logo;
  final String text; 
  const KomponenUi1({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, 
      width: 90, 
      decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(15), 
      border: BoxBorder.all(color: Colors.green, width: 2),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(height: 40, child: Image.asset(logo),
      ), 
          Text(text, style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}