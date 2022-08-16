import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

const bgcolor = Color(0xff191A22);

myTitle([double? lspace]) {
  return GoogleFonts.nunito(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      letterSpacing: lspace);
}

myText(Color? clr, [double? lspace]) {
  return GoogleFonts.nunito(
      fontSize: 16,
      color: clr,
      fontWeight: FontWeight.w600,
      letterSpacing: lspace);
}

// textField(String? hintext, Icons? icon) {
//   String hintext;
//   Icon icon;
//   return TextField(
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.all(16),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(width: 1, color: Colors.grey),
//         borderRadius: BorderRadius.circular(28),
//       ),
//       hintText: '${hintext}',
//       hintStyle: TextStyle(
//         color: Color(0xff8E8E93),
//       ),
//       prefixIcon: Icon(
//         Icons.$icon,
//         color: Color(0xff8E8E93),
//       ),
//     ),
//   );
// }

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
    ;
  }
}
