import 'package:flutter/material.dart';
import 'package:gymon/favorite_screen/image_slider2.dart';
import 'image_slider1.dart';

class FavroiteScreen extends StatelessWidget {
  const FavroiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00307C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: SizedBox(
            width: 84.08,
            height: 20,
            child: Image.asset(
              'assets/images/logo.png',
              width: 84.08,
              height: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10,),
              child: Center(
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  vertical: 20),
              decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color.fromARGB(255, 243, 235, 235),
                      width: 0.3, 
                    ),
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 243, 235, 235),
                      width: 0.3,
                    ),
                  ),
                  color: Color(0xFF174285)),
              child: const Column(
                children: [
                  Text(
                    "Favorite Trainers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  ImagesSlider()
                ],
              ),
            ),
            const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
              child: Text( "Favorite Gym",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,),)
            ),
           const SecondImagesSlider()
          ],
        ),
      ),
    );
  }
}
