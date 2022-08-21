import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_database/custom_widget/custom_onboard.dart';
import 'package:flutter_database/scrrens/onboarding_Screen/onboard_page3.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPage2 extends StatelessWidget {
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
                    'Create a Task and \nAssign it to Your \nTeam Members',
                    style: myTitle(),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SvgPicture.asset('images/Slider (1).svg'),
                  SizedBox(
                    height: 36,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnboardPage3()),
                        );
                      },
                      child: CustomFillButton(text: 'Sign Up')),
                  SizedBox(
                    height: 16,
                  ),
                  CustomBorderButton(text: "Login"),
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
