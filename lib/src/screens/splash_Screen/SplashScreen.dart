import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Auth/auth_Dashboard.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({super.key});

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AuthDashboard()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xff89afff), Color(0xff3375fe)],
            center: Alignment.center,
            radius: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            "Medica",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
