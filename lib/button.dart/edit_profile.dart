import 'dart:ffi';

import 'package:flutter/material.dart';

import 'button.dart';
import 'gender_dropdown.dart';
import 'image.dart';
import 'input.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 124.65,
                    height: 9, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: const Color(
                          0XFF10C0F7), // Change the color to your desired color
                      borderRadius: BorderRadius.circular(
                          4), // Adjust the border radius as needed
                    ),
                  ),
                  const SizedBox(width: 8), // Adjust the gap width as needed
                  Container(
                    width: 124.65,
                    height: 9, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 72, 150),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 8), // Adjust the gap width as needed
                  Container(
                    width: 124.65,
                    height: 9, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 72, 150),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              ProfileImage(),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: InputField(
                      labelText: 'maira',
                      width: 192,
                      height: 72,
                      label: 'First Name',
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InputField(
                    labelText: 'Last Name',
                    width: 192,
                    height: 72,
                    label: 'Last Name',
                  ),
                ],
              ),
              InputField(
                labelText: "Phone Num",
                label: 'phone Num',
              ),
              Container(
                 margin: EdgeInsets.symmetric(vertical: 20),
                child: InputField(
                  labelText: "Email",
                  label: 'Email',
                ),
              ),
              Row(
                children: [
                  InputField(
                    labelText: 'Day',
                    width: 125,
                    height: 72,
                    label: 'Day',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InputField(
                    labelText: 'Month',
                    width: 125,
                    height: 72,
                    label: 'Month',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InputField(
                    labelText: 'Year',
                    width: 125,
                    height: 72,
                    label: 'Year',
                  ),
                ],
              ),
              Container(
                 margin: EdgeInsets.symmetric(vertical: 20),
                child: GenderDropdown()),
              SizedBox(
                width: 8,
              ),
              Container(
                 margin: EdgeInsets.only(bottom: 25),
                child: Buttons(onPressed: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
