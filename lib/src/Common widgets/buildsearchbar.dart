import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/src/utils/HelperClass.dart';

import '../contant/image_String.dart';

Widget buildsearchbar() {
  return Container(
    padding: EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        SvgPicture.asset(
          ksearch,
          color: Colors.grey,
        ),
        addHorizontalSpace(10),
        Text(
          "Search",
          style: GoogleFonts.poppins(color: Colors.grey[400], fontSize: 18),
        ),
        Spacer(),
        SvgPicture.asset(
          kfilter,
          color: Color(0xff3375fe),
        ),
      ],
    ),
  );
}
