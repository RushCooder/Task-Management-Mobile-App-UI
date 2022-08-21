import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddTagModalSheet extends StatelessWidget {
  final _random = Random();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Tag',
                  style: myText(Colors.white).copyWith(fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Tag Name',
              style: myText(Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintext: 'Enter Your name tags',
              ticon: 'images/Suitcase 1.svg',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Color',
              style: myText(Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors
                      .primaries[_random.nextInt(Colors.primaries.length)],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
