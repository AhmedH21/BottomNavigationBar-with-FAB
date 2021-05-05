import 'package:dsc_task_3/home.dart';
import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/my_network_page.dart';
import 'screens/notifactions_page.dart';
import 'screens/chat_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC TASK-3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff212121),
        scaffoldBackgroundColor: Color(0xff303030),
      ),
      home: HomePage(),
    );
  }
}

