import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

const bgcolor = Color(0xff191A22);
const greyclr = Color(0xff8E8E93);

TextStyle myTitle([double? lspace]) {
  return GoogleFonts.nunito(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      letterSpacing: lspace);
}

TextStyle myText(Color? clr, [double? lspace]) {
  return GoogleFonts.nunito(
      fontSize: 16,
      color: clr,
      fontWeight: FontWeight.w600,
      letterSpacing: lspace);
}

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hintext, required this.ticon});
  String hintext;
  String ticon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(28),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff8E8E93), width: 1),
          borderRadius: BorderRadius.circular(28),
        ),
        hintText: '$hintext',
        hintStyle: TextStyle(
          color: Color(0xff8E8E93),
        ),
        prefixIcon: Container(
          margin: EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            '$ticon',
            height: 5,
            width: 5,
            fit: BoxFit.scaleDown,
            color: Color(0xff8E8E93),
          ),
        ),
      ),
    );
  }
}
