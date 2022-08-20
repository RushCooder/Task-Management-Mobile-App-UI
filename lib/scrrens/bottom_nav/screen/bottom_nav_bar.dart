import 'package:flutter/material.dart';
import 'package:flutter_database/custom_widget/component.dart';
import 'package:flutter_database/scrrens/bottom_nav/screen/calender.dart';
import 'package:flutter_database/scrrens/bottom_nav/screen/home_page.dart';
import 'package:flutter_database/scrrens/bottom_nav/screen/profile.dart';
import 'package:flutter_database/scrrens/bottom_nav/screen/project.dart';
import 'package:flutter_database/scrrens/bottom_nav/widget/bottom_sheet.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<HomePage> {
  List<Widget> pages = [
   MyTaskPage(),
    CalenderPage(),
    ProjectPage(),
    ProfilePage()
  ];

  PageController pageController = PageController();

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Container(
        height: 64.0,
        width: 64.0,
        child: FittedBox(
          child: FloatingActionButton(onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Color(0xff292B3E),
        context: context,
        builder: (context) {
          return SizedBox(
            height: 600,
            child: ShowModal(),
          );
        });
          },
          child: Icon(Icons.add),),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 130,
          color: Color(0xff292B3E),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                            currentIndex = 0;
                            pageController.jumpToPage(currentIndex);
                          });
                      },
                      child: Column(
                        children: [
                            Container(
                              height:60,
                              width: 60,
                              child: SvgPicture.asset('images/Icon.svg',height: 50,width: 50,fit: BoxFit.scaleDown)),
                            Text('My Task',style: myText(Colors.white).copyWith(fontSize: 15),),
                          ],
                      ),
                    ),SizedBox(
                        width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                            currentIndex = 1;
                            pageController.jumpToPage(currentIndex);
                          });
                      },
                      child: Column(
                        children: [
                            Container(
                              child: SvgPicture.asset('images/Calendar.svg',height: 50,width: 50,fit: BoxFit.scaleDown,color: Colors.white,)),
                            Text('Calender',style: myText(Colors.white).copyWith(fontSize: 15),),
                          ],
                      ),
                    ),SizedBox(
                        width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                            currentIndex = 2;
                            pageController.jumpToPage(currentIndex);
                          });
                      },
                      child: Column(
                        children: [
                            Container(
                              child: SvgPicture.asset('images/Document 1.svg',height: 50,width: 50,fit: BoxFit.scaleDown,color: Colors.white,)),
                            Text('Project',style: myText(Colors.white).copyWith(fontSize: 15),),
                          ],
                      ),
                    ),SizedBox(
                        width: 34.75,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                            currentIndex = 2;
                            pageController.jumpToPage(currentIndex);
                          });
                      },
                      child: Column(
                        children: [
                            Container(
                              child: SvgPicture.asset('images/User Profile 4.svg',height: 50,width: 50,fit: BoxFit.scaleDown,color: Colors.white,)),
                            Text('Profile',style: myText(Colors.white).copyWith(fontSize: 15),),
                          ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SvgPicture.asset('images/Indicator.svg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
