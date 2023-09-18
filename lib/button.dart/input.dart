import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  final String labelText, label;
  final List<TextInputFormatter>? inputFormatters;
  final double width; // Width of the input field
  final double height; // Height of the input field

  const InputField({
    Key? key,
    required this.labelText,
    this.inputFormatters,
    this.width = 390, // Default width
    this.height = 72, required this.label, // Default height
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width, // Use the specified width
      height: widget.height, // Use the specified height
      child: Stack(
        children: [
          TextFormField(
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              labelText: null, // Set the label text to null
              floatingLabelBehavior: FloatingLabelBehavior.never, // Hide the default floating label
              hintText: widget.labelText, // Use the label text as hint text
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 108, 127, 156),
                fontSize: 12,
              ),
              // Remove the border by setting it to InputBorder.none
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              filled: true,
              fillColor: Color.fromARGB(255, 21, 72, 150),
            ),
            style: TextStyle(color: Colors.white),
          ),
          Transform.translate(
            offset: Offset(10, -15), // Adjust the vertical offset as needed
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 21, 72, 150), // Background color of the label text
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  widget.label,
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.transparent, // Transparent background for the text
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
