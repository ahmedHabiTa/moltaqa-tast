import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static const Color primaryColor = Color(0xFFCA252B);
  static const Color backgroundColor = Color(0xFFF6F2F2);
  static const Color appBarColor = Color(0xFFFFFFFF);
  static const Color iconsColor = Color(0xFF7C7D7E);
  static const Color skyColor = Color(0xFFBFE2FF);


  static  TextStyle tajwalLight10pt = GoogleFonts.tajawal(
    color:const Color(0xFF0E0E0F),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle tajwalBold16ptPrimary = GoogleFonts.tajawal(
    color: primaryColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static  TextStyle tajwalBold16ptBlack = GoogleFonts.tajawal(
    color: const Color(0xFF131111),
    fontSize: 16,
    fontWeight: FontWeight.bold,
    textStyle:const TextStyle(
      overflow: TextOverflow.ellipsis,
    )
  );
  static  TextStyle tajwalBold10ptBlack = GoogleFonts.tajawal(
    color: const Color(0xFF131111),
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle tajwalBold14ptBlack = GoogleFonts.tajawal(
    color: const Color(0xFF0D0D0D),
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle tajwalMedium12pt = GoogleFonts.tajawal(
    textStyle:const TextStyle(
      color:  Color(0xFF7C7D7E),
      fontSize: 12,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.lineThrough,
      decorationColor:  Color(0xFF7C7D7E),
    ),
  );
  static  TextStyle tajwalBold10pt = GoogleFonts.tajawal(
    color: const Color(0xFF0D0D0D),
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
}
