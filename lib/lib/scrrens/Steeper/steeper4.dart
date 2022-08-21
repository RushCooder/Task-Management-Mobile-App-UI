import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SteeperPage4 extends StatelessWidget {
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
                  SvgPicture.asset('images/Slider (6).svg'),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Enter Your Code Team',
                    style: myText(Colors.white),
                  )),
              SizedBox(
                height: 16,
              ),
              
              Text(
                'Code Team',
                style: myText(Colors.grey),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextField(
                  hintext: 'e.g JXHJKH',
                  ticon: 'images/key.svg'),
              SizedBox(
                height: 16,
              ),
              Spacer(),
              CustomFillButton(text: 'Continue'),
              Spacer(),
              Center(child: SvgPicture.asset('images/Indicator.svg'))
            ],
          ),
        ),
      ),
    );
  }
}