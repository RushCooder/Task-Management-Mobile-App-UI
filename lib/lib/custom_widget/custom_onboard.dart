import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardStyle extends StatelessWidget {
  OnboardStyle(
      {required this.onbtitle, required this.onbimg, required this.Slider});
  String onbtitle;
  String onbimg;
  String Slider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff191A22),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  '$onbimg',
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$onbtitle',
                        style: GoogleFonts.nunito(
                            fontSize: 36,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SvgPicture.asset('$Slider'),
                      SizedBox(
                        height: 36,
                      ),
                      // CustomButton(text: "Sign Up"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
