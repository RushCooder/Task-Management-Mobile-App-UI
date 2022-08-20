import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
class ProjectDetails extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: bgcolor,
            body: Container(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 44,left: 16,right: 16),
                child: Column(
                  children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Icon(Icons.keyboard_arrow_left,color: Colors.white,),
                                Text('Project',style: myText(Colors.white),),
                                Icon(Icons.more_vert,color: Colors.white,),
                              ],
                          ),
                          SizedBox(
                              height: 30,
                          ),
                          SingleChildScrollView(
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
                                            child: Center(child: Text('16',style: myText(Colors.white),)),
                                          ),
                                          SizedBox(
                                              width: 8,
                                          ),
                                          Text('All',style: myText(Colors.white),)
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
                                            child: Center(child: Text('5',style: myText(Colors.white),)),
                                          ),
                                          SizedBox(
                                              width: 8,
                                          ),
                                          Text('Ongoing',style: myText(Colors.white),)
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
                                            child: Center(child: Text('7',style: myText(Colors.white),)),
                                          ),
                                          SizedBox(
                                              width: 8,
                                          ),
                                          Text('Under Review',style: myText(Colors.white),)
                                      ],
                                  ),
                                ],
                            ),
                          ),
                    ],
                ),
              ),
            ),
      );
  }
}