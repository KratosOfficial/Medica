import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../contant/image_String.dart';
import '../../../utils/HelperClass.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  String selectedOption = ''; // Track the selected option

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Forget Password",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          addVerticalSpace(20),
          Text(
            "Select which contact details should we use to reset your password",
            style: GoogleFonts.montserrat(fontSize: 15),
          ),
          addVerticalSpace(20),
          buildForgetContainer(
            kboldchat,
            "via SMS:",
            "+1 111 *****99",
            selectedOption == "SMS", // Check if it's selected 
          ),
          addVerticalSpace(20),
          buildForgetContainer(
            kboldmail,
            "via Email:",
            "me***ca@yourdomain.com",
            selectedOption == "Email", // Check if it's selected
          ),
          addVerticalSpace(30),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xff2763c0),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                "Continue",
                style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildForgetContainer(String icon, String text1, String text2, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = text1; // Update the selected option
        });
      },
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey, // Change border color when selected
            width: 0.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: SvgPicture.asset(
                icon,
                color: Color(0xff3375fe),
              ),
            ),
            addHorizontalSpace(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: GoogleFonts.montserrat(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                Text(
                  text2,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}