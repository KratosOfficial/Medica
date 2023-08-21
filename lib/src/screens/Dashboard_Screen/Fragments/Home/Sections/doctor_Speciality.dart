import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../contant/image_String.dart';

class doctor_Speciality extends StatefulWidget {
  const doctor_Speciality({super.key});

  @override
  State<doctor_Speciality> createState() => _doctor_SpecialityState();
}

class _doctor_SpecialityState extends State<doctor_Speciality> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Doctor Speciality",
              style: GoogleFonts.montserrat(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              "See All",
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff3375fe)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: SizedBox(
            height: 200,
            child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(17),
                        decoration: BoxDecoration(
                            color: Color(0xffeff4ff),
                            borderRadius: BorderRadius.circular(50)),
                        child: SvgPicture.asset(
                          kboldgeneral,
                          color: Color(0xff417fff),
                        ),
                      ),
                      Text("General",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),)
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
