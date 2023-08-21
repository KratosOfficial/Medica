import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/src/Common%20widgets/buildsearchbar.dart';
import 'package:medica/src/utils/HelperClass.dart';

import '../../../../contant/image_String.dart';
import 'Sections/doctor_Speciality.dart';

class home_Fragment extends StatefulWidget {
  const home_Fragment({super.key});

  @override
  State<home_Fragment> createState() => _home_FragmentState();
}

class _home_FragmentState extends State<home_Fragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff3375fe).withOpacity(0.2),
              child: Text(
                "K",
                style: TextStyle(fontSize: 20),
              ),
            ),
            addHorizontalSpace(10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Good Morning👋",
                style: GoogleFonts.montserrat(
                  color: Colors.grey[600],
                  fontSize: 17,
                ),
              ),
              addVerticalSpace(3),
              Text(
                "Kratos Official",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                knotification,
                height: 30,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  kfavorite,
                  height: 30,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: buildsearchbar(),
              ),
              addVerticalSpace(30),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xff3375fe).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              addVerticalSpace(20),
              doctor_Speciality(),
              Center(
                child: Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
