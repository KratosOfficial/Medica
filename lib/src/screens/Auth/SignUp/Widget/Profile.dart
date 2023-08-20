import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/src/utils/HelperClass.dart';

import '../../../../Common widgets/buidltextfiled.dart';
import '../../../../contant/image_String.dart';

class profile_Screen extends StatefulWidget {
  const profile_Screen({super.key});

  @override
  State<profile_Screen> createState() => _profile_ScreenState();
}

class _profile_ScreenState extends State<profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fill Your Profile", style: GoogleFonts.poppins(
            color: Colors.black, fontWeight: FontWeight.w500),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Spacer(),
            Stack(
              children: [

                CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.grey[200],
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff3375fe),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(kboldedit, color: Colors.white),
                  ),
                ),
              ],
            ),
            Spacer(),
            addVerticalSpace(20),
            buildtextfiled("Full Name"),
            buildtextfiled("Nickname"),
            buildtextfiled("Date of Birth"),
            buildtextfiled("Email"),
            buildtextfiled("Gender"),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => profile_Screen()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
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
            ),
          ],
        ),
      ),
    );
  }

}
