import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildtextfiled ( String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: GoogleFonts.poppins(color: Colors.grey),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Color(0xff3375fe)),
        ),
      ),
    ),
  );
}