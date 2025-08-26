import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFields extends StatelessWidget {
  const InputFields({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.urbanist(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF222222),
        prefixIcon: icon,
        labelText: title,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF222222), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD6ED6A), width: 2),
        ),
      ),
    );
  }
}

