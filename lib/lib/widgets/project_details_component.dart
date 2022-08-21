import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/model/my_task_list.dart';

class ProjectDetailsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 32,
                width: 44,
                decoration: BoxDecoration(
                  color: Color(0xff246BFD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  '16',
                  style: myText(Colors.white),
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'All',
                style: myText(Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 32,
          ),
          Row(
            children: [
              Container(
                height: 32,
                width: 44,
                decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  '5',
                  style: myText(Colors.white),
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Ongoing',
                style: myText(Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 32,
          ),
          Row(
            children: [
              Container(
                height: 32,
                width: 44,
                decoration: BoxDecoration(
                  color: Color(0xff292B3E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  '7',
                  style: myText(Colors.white),
                )),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Under Review',
                style: myText(Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectDetailsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (Context, index) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: myList.length,
            itemBuilder: (Context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 140,
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
                              Text(
                                '${myList[index].taskName}',
                                style: myText(Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  '${myList[index].delay} left',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        'PT. Iktatan Cinta',
                        style: myText(Colors.white).copyWith(fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16),
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
                              style:
                                  myText(Colors.white).copyWith(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '12 Tasks',
                                  style: myText(Colors.white)
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
