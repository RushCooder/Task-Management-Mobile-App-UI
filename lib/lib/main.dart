import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_database/lib/scrrens/bottom_nav/screen/bottom_nav_bar.dart';
import 'package:flutter_database/lib/scrrens/bottom_nav/screen/project/project_click_details.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.amberAccent),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
