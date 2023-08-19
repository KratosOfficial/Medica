import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/src/screens/Auth/SignUp/Signup.dart';

import '../../contant/image_String.dart';
import '../../contant/text_String.dart';
import 'SignIn/singIn.dart';

class AuthDashboard extends StatefulWidget {
  const AuthDashboard({super.key});

  @override
  State<AuthDashboard> createState() => _AuthDashboardState();
}

class _AuthDashboardState extends State<AuthDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                kvector1,
                height: 220,
              ),
              Spacer(),
              Text(
                auth1,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 45),
              ),
              SizedBox(
                height: 10,
              ),
              Spacer(),
              buildcontainer(facebook, kfacebooklogo),
              buildcontainer(google, kgooglelogo),
              buildcontainer(apple, kapplelogo),
              SizedBox(
                height: 30,
              ),
              Text(
                "or",
                style: GoogleFonts.poppins(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signIn()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff3375fe),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                    "Sign in with password",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUp()));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  TextSpan(
                    text: "Sign up",
                    style: GoogleFonts.poppins(
                        color: Color(
                          0xff3375fe,
                        ),
                        fontWeight: FontWeight.w500),
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildcontainer(String text1, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey, width: 0.5)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                image,
                height: 30,
              ),
            ),
            Text(text1),
          ],
        )),
      ),
    );
  }
}
