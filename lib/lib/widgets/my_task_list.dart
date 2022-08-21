import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/model/my_task_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MyTaskListPage extends StatelessWidget {
  // Text ?color ;
  // currentProgressColor() {
  //   if (myList[index].type=='Approve') {
  //     return Colors.red;
  //   }
  //   if(progress >= 0.8){
  //     return Colors.green;
  //   }
  //   else{
  //     return Colors.orange;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: myList.length,
          itemBuilder: (Context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 8),
              height: 120,
              decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '${myList[index].title}',
                              style: myText(Colors.white),
                            ),
                          ],
                        ),
                        Chip(
                          label: Text('${myList[index].type}',style: TextStyle(color:myList[index].type=='In Progress'?Color(0xff246BFD):myList[index].type=='Urgent'?Color(0xffF79293):myList[index].type=='In Review'?Color(0xffFFBE3C):myList[index].type=='Approve'?Color(0xff76BBAA):Colors.transparent)),
                          backgroundColor: myList[index].type=='Urgent'?Color(0xffFEEBF5):myList[index].type=='In Review'?Color(0xffFFF6E4):myList[index].type=='In Progress'?Color(0xffE6EBF8):myList[index].type=='Approve'?Color(0xffDDEEEA):Colors.transparent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 48, right: 16),
                            child: Stack(
                              children: [
                                Container(
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: myList[index]
                                          .color
                                          ?.withOpacity(0.2),
                                      borderRadius:
                                          BorderRadius.circular(12)),
                                ),
                                LayoutBuilder(
                                    builder: (context, constraints) {
                                  return Container(
                                    height: 5,
                                    width: constraints.maxWidth *
                                        (myList[index].percentage! / 100),
                                    decoration: BoxDecoration(
                                        color: myList[index].color,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "${myList[index].percentage}/100",
                            style: myText(Colors.white).copyWith(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 48),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('${myList[index].delay} Left',style: myText(Colors.white).copyWith(fontSize: 12),),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
