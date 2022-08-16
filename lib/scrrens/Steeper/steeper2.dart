import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SteeperPage2 extends StatelessWidget {
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
                  SvgPicture.asset('images/Slider (4).svg'),
                ],
              ),
              SizedBox(
                  height: 32,
              ),
              CustomFillButton(text: "Continue"),
              SizedBox(
                  height: 24,
              ),
              Align(
                alignment: Alignment.center  ,
                child: Text('Or',style: myText(Colors.white),)),
              SizedBox(
                  height: 24,
              ),
              CustomBorderButton(text: 'Join Team'),
              Spacer(),
              Center(child: SvgPicture.asset('images/Indicator.svg'))
            ],
          ),
        ),
      ),
    );
  }
}