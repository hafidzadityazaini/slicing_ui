import 'package:flutter/material.dart';
import 'package:slicingui3/komponen/menuatas.dart';

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
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image: AssetImage('assets/stasiun.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  )
                ),
                child: Padding(padding: EdgeInsets.all(10),
                child: Row(
                  children: [Menuatas()],
                ),),
              ),]
            ),
            Positioned(
              left: 20, 
              right: 20, 
              bottom: -50, 
              child: Container(
                height: 100,  
                width: double.infinity, 
                decoration: BoxDecoration(color: Colors.blueGrey),)),
          ],
        ),
      ),
    );
  }
}