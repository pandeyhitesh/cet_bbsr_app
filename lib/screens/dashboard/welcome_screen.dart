import 'package:cet_bbsr_app/contstans.dart';
import 'package:cet_bbsr_app/screens/dashboard/dashboard.dart';
import 'package:cet_bbsr_app/widgets/logo_coe_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'CET BBSR',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              // height: ,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.0),
                    showCOElogo(),
                    SizedBox(height: 20.0),
                    showCETlogo(),
                    SizedBox(height: 30.0),
                    showWelcomeText(),
                    SizedBox(height: 30.0),
                    CircularCountDownTimer(
                      duration: 3,
                      color: Colors.white,
                      fillColor: primaryColor,
                      height: 50,
                      width: 50,
                      isReverse: true,
                      onComplete: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ),
                      ),
                      strokeWidth: 3.0,
                      textStyle: TextStyle(color: Colors.black, fontSize: 10
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget showWelcomeText() {
    return Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'WELCOME TO',
            style: welcomeTextSyle,
          ),
          SizedBox(height: 15.0),

          Text(
            'COLLEGE OF',
            style: welcomeTextSyle,
          ),
          SizedBox(height: 15.0),
          Text(
            'ENGINEERING AND',
            style: welcomeTextSyle,
          ),
          SizedBox(height: 15.0),
          Text(
            'TECHNOLOGY',
            style: welcomeTextSyle,
          ),
          SizedBox(height: 15.0),
          Text(
            'BHUBANESWAR',
            style: welcomeTextSyle,
          ),
        ],
      ),
    );
  }
}
