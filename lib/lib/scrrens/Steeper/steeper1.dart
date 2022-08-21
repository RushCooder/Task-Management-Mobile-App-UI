import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SteeperPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),SizedBox(
                      width: 120,
                  ),
                  SvgPicture.asset('images/Slider (3).svg'),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Complete Your Profiles',
                    style: myText(Colors.white),
                  )),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 88,
                  width: 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff8E8E93),
                  ),
                  child: SvgPicture.asset(
                    'images/Camera 1.svg',
                    height: 24,
                    width: 24,
                    color: Colors.white,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Your Full Name',
                style: myText(Colors.grey),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextField(
                  hintext: 'Enter your full name',
                  ticon: 'images/User Profile 4.svg'),
              SizedBox(
                height: 16,
              ),
              Text(
                'Your Password',
                style: myText(Colors.grey),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextField(
                  hintext: 'Enter your password', ticon: 'images/Key.svg'),
              SizedBox(
                height: 16,
              ),
              CustomFillButton(text: "Continue"),
              Spacer(),
              Center(child: SvgPicture.asset('images/Indicator.svg'))
            ],
          ),
        ),
      ),
    );
  }
}
