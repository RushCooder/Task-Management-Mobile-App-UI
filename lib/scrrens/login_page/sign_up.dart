import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: myText(Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Your Email Address',
                style: myText(Colors.grey),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextField(
                hintext: 'Enter Your Emai Address',
                ticon: 'images/mail.svg',
              ),
              SizedBox(
                height: 16,
              ),
              CustomFillButton(text: 'Continue'),
              SizedBox(
                height: 24,
              ),
              Spacer(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset('images/Indicator.svg'))
            ],
          ),
        ),
      ),
    );
  }
}
