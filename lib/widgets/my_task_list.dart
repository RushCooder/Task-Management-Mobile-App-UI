import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyTaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 108,
          width: 343,
          decoration: BoxDecoration(
              color: Color(0xff292B3E), borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('images/User Profile 4.svg'),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Research Analysis',
                          style: myText(Colors.white),
                        ),
                      ],
                    ),
                    Chip(
                        label: Text(
                      'Upcoming',
                      style: myText(Colors.white),
                    ))
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 30, right: 15),
                        height: 8,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '5/20',
                      style: myText(Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
