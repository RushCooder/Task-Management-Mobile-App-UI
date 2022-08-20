import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/model/my_task_list.dart';
import 'package:flutter_database/widgets/invite_member_showModal.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamMemberPage extends StatelessWidget {
  final _random = Random();
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
              children: [
                Row(
                  children: [
                    Icon(Icons.keyboard_arrow_left, color: Colors.white),
                    Spacer(),
                    Text(
                      'Parto Team',
                      style: myText(Colors.white),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_left, color: Colors.transparent),
                  ],
                ),
                SizedBox(
                  height: 33.5,
                ),
                Container(
                  height: 600,
                  child: Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 131,
                          width: 167,
                          decoration: BoxDecoration(
                              color: Color(0xff292B3E),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 16, right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Color(0xff8E8E93),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50, top: 50),
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.primaries[
                                                _random.nextInt(
                                                    Colors.primaries.length)]
                                            [_random.nextInt(9) * 100],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 130, top: 5),
                                      child: Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Amir Hossain',
                                  style: myText(Colors.white),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '${myList[index].email}',
                                  style: myText(Colors.white)
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Color(0xff292B3E),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 600,
                            child: TeamInviteMembeShowModal(),
                          );
                        });
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xff246BFD), shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SvgPicture.asset('images/Indicator.svg')
              ],
            ),
          ),
        ));
  }
}
