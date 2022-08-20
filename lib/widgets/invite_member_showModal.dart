import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/custom_widget/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamInviteMembeShowModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.centerRight  ,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 229,
              width: 343,
                decoration: BoxDecoration(
                color: Color(0xff8E8E93),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Add New Member',
              style: myText(Colors.white),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Make your team good with us. invite your team \nmembers. to get going',
              style: myText(Colors.white),
            ),
            SizedBox(
                height: 8,
            ),
            Text(
              'Team Members',
              style: myText(Color.fromARGB(255, 219, 219, 219)),
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
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Icon(Icons.person_add,color: Colors.white,),
                ),
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ),
              ),
            ),SizedBox(
                height: 16,
            ),
            Row(
              children: [
                  Icon(Icons.add,color: Colors.white,),
                  SizedBox(
                      width: 16,
                  ),
                  Text('Add Member',style: myText(Colors.white),)
                ],
            ),SizedBox(
                height: 16,
            ),
            CustomFillButton(text: 'Invite'),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset('images/Indicator.svg'))
          ],
        ),
      ),
    );
  }
}
