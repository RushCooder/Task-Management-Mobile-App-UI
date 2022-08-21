import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/lib/scrrens/bottom_nav/screen/project/add_tag_bottom_sheet.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectClickDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        height: 64.0,
        width: 64.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Color(0xff292B3E),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 600,
                      child: AddTagModalSheet(),
                    );
                  });
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
      backgroundColor: bgcolor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 44, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                  Text(
                    'Project Details',
                    style: myText(Colors.white),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 343,
                decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Web Design - PT Mencari\nCinta Sejati',
                        style: myTitle().copyWith(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '12 Task',
                            style: myText(Colors.grey).copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Goals\nLorem ipsum dolor sit amet, consectetur\nadipis cing elit. Sit tristique porttitor\n magna turpis consequat, sed. At urna, cras\n ultricies tristique.',
                        style: myText(Colors.grey)
                            .copyWith(fontSize: 12, height: 2),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'images/Calendar.svg',
                                height: 20,
                                width: 20,
                                color: Color.fromARGB(195, 255, 255, 255),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'March 13, 17:00 PM',
                                style:
                                    myText(Color.fromARGB(200, 255, 255, 255))
                                        .copyWith(fontSize: 12, height: 2),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'images/Suitcase 1.svg',
                                height: 20,
                                width: 20,
                                color: Color.fromARGB(195, 255, 255, 255),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Medium Project',
                                style:
                                    myText(Color.fromARGB(200, 255, 255, 255))
                                        .copyWith(fontSize: 12, height: 2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  height: 413,
                  width: 343,
                  decoration: BoxDecoration(
                    color: Color(0xff292B3E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Task (5/12)',
                              style: myText(Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: LinearProgressIndicator(
                                  value: 20,
                                  backgroundColor: Colors.grey,
                                  minHeight: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Research Analysis',
                                    style: myText(Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
