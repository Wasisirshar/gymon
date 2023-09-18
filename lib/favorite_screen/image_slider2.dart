import 'package:flutter/material.dart';

class SecondImagesSlider extends StatefulWidget {
  const SecondImagesSlider({super.key});

  @override
  State<SecondImagesSlider> createState() => SecondImagesSliderState();
}
class SecondImagesSliderState extends State<SecondImagesSlider> {
   List<String> assets = [
    'assets/images/gym1.png',
     'assets/images/gym1.png',
     'assets/images/gym1.png',
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250 ,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        itemCount: assets.length,
        controller: PageController(viewportFraction: 0.74,
         initialPage: 3, ),
        itemBuilder:((context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4)
          ),
          child: Image.asset(assets[index],fit: BoxFit.contain,),
        );
      })),
    );
  }
}