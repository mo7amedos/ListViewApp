import 'package:flutter/material.dart';
import 'package:students_list/screens/students_list.dart';
import 'package:students_list/screens/student_detil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Students List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan
      ),
      home: StudentsList(),
    );
  }
}
