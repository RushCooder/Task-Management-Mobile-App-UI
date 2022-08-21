import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/scrrens/onboarding_Screen/onboard_page1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff191A22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset('images/Icon.svg'),
            SizedBox(
              height: 32,
            ),
            Text(
              'RACING',
              style: myTitle(),
            ),
            Text(
              'Your Personal Task Manager',
              style: GoogleFonts.nunito(
                  fontSize: 17, color: Colors.white, letterSpacing: 0.4),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardPage1()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 40, left: 18, right: 18),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff246BFD),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Getting Started',
                        style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Colors.white,
                            letterSpacing: 0.4),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SvgPicture.asset('images/Indicator.svg'),
            )
          ],
        ),
      ),
    );
  }
}
