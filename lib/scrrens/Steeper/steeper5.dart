import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xen_popup_card/xen_card.dart';

class SteeperPage5 extends StatefulWidget {
  @override
  State<SteeperPage5> createState() => _SteeperPage5State();
}

class _SteeperPage5State extends State<SteeperPage5> {
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
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  SvgPicture.asset('images/Slider (7).svg'),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Invite Your Team Member',
                    style: myText(Colors.white),
                  )),
              SizedBox(
                height: 16,
              ),
              Text(
                'Email Member',
                style: myText(Colors.grey),
              ),
              SizedBox(
                height: 12,
              ),
              CustomTextField(
                  hintext: 'Type an email addrress', ticon: 'images/Mail.svg'),
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
