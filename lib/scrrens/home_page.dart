import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/widgets/project_task_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
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
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: greyclr,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Prato Team',
                        style: myText(Colors.white),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'images/search.svg',
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Project Task',
                style: myText(Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 80,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProjectTaskList(
                        projectNumber: 5,
                        Progress: 'Ongoing',
                        concolor: Color(0xff9C67F9),
                      ),
                      SizedBox(
                        width: 7.08,
                      ),
                      ProjectTaskList(
                        projectNumber: 5,
                        Progress: 'Under\nReview',
                        concolor: Color(0xffF79293),
                      ),
                      SizedBox(
                        width: 7.08,
                      ),
                      ProjectTaskList(
                        projectNumber: 5,
                        Progress: 'Upcoming',
                        concolor: Color(0xff76BBAA),
                      ),
                      SizedBox(
                        width: 7.08,
                      ),
                      ProjectTaskList(
                        projectNumber: 5,
                        Progress: 'Ongoing',
                        concolor: Color(0xff9C67F9),
                      ),
                      SizedBox(
                        width: 7.08,
                      ),
                      ProjectTaskList(
                        projectNumber: 5,
                        Progress: 'Under\nReview',
                        concolor: Color(0xffF79293),
                      ),
                      SizedBox(
                        width: 7.08,
                      ),
                      ProjectTaskList(
                        projectNumber: 5,
                        Progress: 'Upcoming',
                        concolor: Color(0xff76BBAA),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Task',
                    style: myText(Colors.white),
                  ),
                  Text(
                    'See More',
                    style: myText(Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
