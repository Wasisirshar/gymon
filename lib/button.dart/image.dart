import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/profile.png', // Replace with your image asset path
            width: 134, // Adjust the image width as needed
            height: 123, // Adjust the image height as needed
          ),
        ),
     // Adjust the spacing between the image and text
        const Text('John Alexander',
            style: TextStyle(fontSize: 16, color: Color(0XFFE7E9ED))),
        const Text(
          'alexander@example.com',
          style:
              TextStyle(fontSize: 12, color: Color.fromARGB(255, 38, 86, 163)),
        ),

      ],
    );
  }
}
