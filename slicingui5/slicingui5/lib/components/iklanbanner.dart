import 'package:flutter/material.dart';

class Iklanbanner extends StatelessWidget {
  const Iklanbanner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> bannerSlide = [
      "assets/banner-4.png",
      "assets/lost.jpg",
      "assets/do-we.jpg",
      "assets/me-too.jpg",
    ];
    return SizedBox(
      height: 220,
      child: PageView.builder(
        itemCount: bannerSlide.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(15),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage("assets/banner-4.png")),
            ),
          );
        },
      ),
    );
  }
}

      // height: 180,
      // child: PageView(
      //   children: [
      //     Container(
      //       margin: EdgeInsets.all(15),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(image: AssetImage("assets/banner-4.png")),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(15),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(image: AssetImage("assets/lost.jpg")),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(15),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(image: AssetImage("assets/do-we.jpg")),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(15),
      //       height: double.infinity,
      //       width: double.infinity,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         image: DecorationImage(image: AssetImage("assets/me-too.jpg")),
      //       ),
      //     ),
      //   ],
      // ),