import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final VoidCallback onPressed;
  const Buttons(
      {super.key,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 390,
        height: 60,
        // padding: const EdgeInsets.only(left: 44, right: 44),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0XFF10C0F7
)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                )),
            child: Text(
              "Save the Changes",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )));
  }
}