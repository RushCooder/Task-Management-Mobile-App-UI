import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowModal extends StatelessWidget {
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
                  'Add New Project',
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
              'Project Name',
              style: myText(Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintext: 'Enter Project Name',
              ticon: 'images/Suitcase 1.svg',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Select Your Team',
              style: myText(Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(28),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8E8E93), width: 1),
                  borderRadius: BorderRadius.circular(28),
                ),
                hintText: 'Select Your Team',
                hintStyle: TextStyle(
                  color: Color(0xff8E8E93),
                ),
                prefixIcon: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Assigned to',
              style: myText(Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(28),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8E8E93), width: 1),
                  borderRadius: BorderRadius.circular(28),
                ),
                hintText: 'Ongoing',
                hintStyle: TextStyle(
                  color: Color(0xff8E8E93),
                ),
                prefixIcon: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: SvgPicture.asset(
                    'images/Calendar.svg',
                    color: Colors.white,
                  ),
                ),
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 8,
            ),
            Text(
              'Timeline',
              style: myText(Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintext: 'Enter Project Name',
              ticon: 'images/Suitcase 1.svg',
            ),
            SizedBox(
                height: 16,
            ),
            Row(
              children: [
                  SvgPicture.asset('images/Link.svg',color: Colors.grey,),
                SizedBox(
                    width: 16,
                ),
                Text('Attched Files',style: myText(Colors.white),),
                ],
            ),
            SizedBox(
                height: 24,
            ),
            CustomFillButton(text: 'Save'),
            Spacer(),
            Align(
              alignment:Alignment.bottomCenter,
              child: SvgPicture.asset('images/Indicator.svg'),),
          ],
        ),
      ),
    );
  }
}
