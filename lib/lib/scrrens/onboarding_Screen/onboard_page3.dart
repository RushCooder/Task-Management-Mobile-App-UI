import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_database/custom_widget/custom_onboard.dart';
import 'package:flutter_database/scrrens/login_page/login_page.dart';
import 'package:flutter_database/scrrens/login_page/sign_up.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SvgPicture.asset('images/Illustrations Placeholder.svg'),
            SizedBox(
              height: 34,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get Notified when \nyou Get a New \nAssignment',
                    style: myTitle(),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SvgPicture.asset('images/Slider (2).svg'),
                  SizedBox(
                    height: 36,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: CustomFillButton(text: 'Sign Up')),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: CustomBorderButton(text: "Login")),
                  SizedBox(
                    height: 80,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset('images/Indicator.svg'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// OnboardStyle(
//         onbimg: 'images/Illustrations Placeholder.svg',
//         onbtitle: 'Update Progress \nYour Work for The \nTeam',
//         Slider: 'images/Slider.svg',
//       )
