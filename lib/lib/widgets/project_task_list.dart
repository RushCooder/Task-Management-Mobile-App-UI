import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';

class ProjectTaskList extends StatelessWidget {
  ProjectTaskList(
      {required this.projectNumber,
      required this.Progress,
      required this.concolor});
  int projectNumber;
  String Progress;
  Color concolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 57,
          width: 113,
          decoration: BoxDecoration(
              color: Color(0xff292B3E), borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 3.54,
                decoration: BoxDecoration(
                  color: concolor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 21,
              ),
              Text(
                '$projectNumber',
                style: myText(Colors.white).copyWith(fontSize: 20),
              ),
              SizedBox(
                width: 8,
              ),
              Text('$Progress',
                  style: myText(Colors.white).copyWith(fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}
