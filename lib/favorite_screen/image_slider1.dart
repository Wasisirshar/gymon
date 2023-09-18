import 'package:flutter/material.dart';

class ImagesSlider extends StatefulWidget {
  const ImagesSlider({super.key});

  @override
  State<ImagesSlider> createState() => ImagesSliderState();
}
class ImagesSliderState extends State<ImagesSlider> {
   List<String> assets = [
    'assets/images/image1.png',
    'assets/images/images2.png',
    'assets/images/image1.png',
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250 ,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        itemCount: assets.length,
        controller: PageController(viewportFraction: 0.58
         ),
        itemBuilder:((context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4)
          ),
          child: Image.asset(assets[index],fit: BoxFit.contain),
        );
      })),
    );
  }
}