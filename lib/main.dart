import 'package:cet_bbsr_app/contstans.dart';
import 'package:cet_bbsr_app/screens/complaint/complaint_register.dart';
import 'package:cet_bbsr_app/screens/complaint/submit_complaint_screen.dart';
import 'package:cet_bbsr_app/screens/dashboard/dashboard.dart';
import 'package:cet_bbsr_app/screens/dashboard/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ComplaintRegister(),
    );
  }
}
