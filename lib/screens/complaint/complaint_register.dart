import 'package:cet_bbsr_app/contstans.dart';
import 'package:cet_bbsr_app/models/complaint_register_model.dart';
import 'package:cet_bbsr_app/screens/complaint/submit_complaint_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ComplaintRegister extends StatefulWidget {
  @override
  _ComplaintRegisterState createState() => _ComplaintRegisterState();
}

class _ComplaintRegisterState extends State<ComplaintRegister> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ComplaintRegisterModel _object = ComplaintRegisterModel();

  FocusNode nameFocusNode = FocusNode();
  FocusNode userIdFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode mobileFocusNode = FocusNode();
  FocusNode complaintFocusNode = FocusNode();

  final nameEditingController = TextEditingController();
  final userIdEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final mobileEditingController = TextEditingController();
  final complaintEditingController = TextEditingController();

  List<String> userCategory = ['Student', 'Faculty', 'Other'];
  List<String> complaintCategory = [
    'Admission',
    'Academic',
    'Examination',
    'Canteen',
    'Hostel',
  ];

  String userDropdownValue = 'Student';
  String userType = 'Student';
  String complaintDropdownValue = 'Admission';
  String complaintType = 'Admission';
  bool isEnabled = true;
  Color submitColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'COMPLAINT REGISTER',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    'Register Your Complaint',
                    style: TextStyle(
                      fontSize: 24,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        // margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              'I\'m a : ',
                              style: TextStyle(
                                fontSize: 16,
                                color: isEnabled ? primaryColor : submitColor,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                            isEnabled
                                ? Container(
                                    child: DropdownButton(
                                      value: userDropdownValue,
                                      items: userCategory
                                          .map<DropdownMenuItem<String>>(
                                              (value) {
                                        return DropdownMenuItem<String>(
                                          child: Text(value),
                                          value: value,
                                        );
                                      }).toList(),
                                      onChanged: (newValue) {
                                        setState(() {
                                          userDropdownValue = newValue;
                                          userType = newValue;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.arrow_downward,
                                        size: 16,
                                        color: primaryColor,
                                      ),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: primaryColor,
                                          letterSpacing: 1.0),
                                      underline: Container(
                                        height: 1,
                                        color: primaryColor,
                                        // margin: EdgeInsets.all(2),
                                        // decoration: BoxDecoration(),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 40,
                                    width: 70,
                                    child: Center(
                                      child: Text(
                                        _object.userType,
                                        style: TextStyle(
                                            fontSize: 16, color: isEnabled ? primaryColor : submitColor),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: isEnabled,
                          focusNode: nameFocusNode,
                          style: TextStyle(color: isEnabled ? primaryColor : submitColor),
                          // validator: _validateAmount,
                          controller: nameEditingController,
                          onFieldSubmitted: (v) {
                            _fieldFocusChange(
                                context, nameFocusNode, userIdFocusNode);
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                              ),
                            ),
                            prefixStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            labelText: 'Enter Name',
                            labelStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                          cursorColor: isEnabled ? primaryColor : submitColor,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: isEnabled ? primaryColor : submitColor),
                        child: TextFormField(
                          enabled: isEnabled,
                          focusNode: userIdFocusNode,
                          style: TextStyle(color: isEnabled ? primaryColor : submitColor),
                          // validator: _validateAmount,
                          controller: userIdEditingController,
                          onFieldSubmitted: (v) {
                            _fieldFocusChange(
                                context, userIdFocusNode, emailFocusNode);
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            prefixStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            labelText: 'Enter Id',
                            labelStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                          cursorColor: isEnabled ? primaryColor : submitColor,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: isEnabled ? primaryColor : submitColor),
                        child: TextFormField(
                          enabled: isEnabled,
                          focusNode: emailFocusNode,
                          style: TextStyle(color: isEnabled ? primaryColor : submitColor),
                          // validator: _validateAmount,
                          controller: emailEditingController,
                          onFieldSubmitted: (v) {
                            _fieldFocusChange(
                                context, emailFocusNode, mobileFocusNode);
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                              ),
                            ),
                            prefixStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            labelText: 'Enter Email Id',
                            labelStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                          cursorColor: isEnabled ? primaryColor : submitColor,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: isEnabled ? primaryColor : submitColor),
                        child: TextFormField(
                          enabled: isEnabled,
                          focusNode: mobileFocusNode,
                          style: TextStyle(color: isEnabled ? primaryColor : submitColor),
                          // validator: _validateAmount,
                          controller: mobileEditingController,
                          onFieldSubmitted: (v) {
                            mobileFocusNode.unfocus();
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                              ),
                            ),
                            prefixStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            labelText: 'Enter Mobile Number',
                            labelStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                          cursorColor: isEnabled ? primaryColor : submitColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text(
                        'Complaint Category : ',
                        style: TextStyle(
                          fontSize: 16,
                          color: isEnabled ? primaryColor : submitColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      if (isEnabled)
                        Container(
                          child: DropdownButton(
                            value: complaintDropdownValue,
                            items: complaintCategory
                                .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                child: Text(value),
                                value: value,
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                complaintDropdownValue = newValue;
                                complaintType = newValue;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_downward,
                              size: 16,
                              color: primaryColor,
                            ),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(
                                fontSize: 14,
                                color: primaryColor,
                                letterSpacing: 1.0),
                            underline: Container(
                              height: 1,
                              color: primaryColor,
                              // margin: EdgeInsets.all(2),
                              // decoration: BoxDecoration(),
                            ),
                          ),
                        )
                      else
                        Container(
                          height: 40,
                          width: 100,
                          child: Center(
                              child: Text(
                            _object.complaintType,
                            style: TextStyle(fontSize: 16, color: isEnabled ? primaryColor : submitColor),
                          )),
                        ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData(primaryColor: isEnabled ? primaryColor : submitColor),
                  child: TextFormField(
                    maxLines: 5,
                    enabled: isEnabled,
                    focusNode: complaintFocusNode,
                    style: TextStyle(color: isEnabled ? primaryColor : submitColor),
                    // validator: _validateAmount,
                    controller: complaintEditingController,
                    onFieldSubmitted: (v) {
                      complaintFocusNode.unfocus();
                    },
                    keyboardType: TextInputType.text,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                      prefixStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                      labelText: 'Write Your Complaint',
                      labelStyle: TextStyle(color: isEnabled ? primaryColor : submitColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isEnabled ? primaryColor : submitColor,
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: isEnabled ? primaryColor : submitColor,
                                width: 2.0,
                              ),
                            ),
                      isDense: true,
                    ),
                    cursorColor: isEnabled ? primaryColor : submitColor,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      !isEnabled
                          ? Container(
                              // color: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    isEnabled = true;
                                  });
                                },
                                child: Text('UPDATE', style: TextStyle(color:Colors.white, letterSpacing: 1.5),),
                                color: primaryColor,
                              ),
                            )
                          : Container(),
                      
                      isEnabled
                      ? Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.all(10.0),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          onPressed: () {
                            confirmFunction();
                          },
                          child: Text('CONFIRM', style: TextStyle(color:Colors.white, letterSpacing: 1.5),),
                          color: primaryColor,
                        ),
                      )
                      : Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.all(10.0),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          onPressed: () {
                            submitFunction();
                          },
                          child: Text('SUBMIT', style: TextStyle(color:Colors.white, letterSpacing: 1.5),),
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void confirmFunction() {
    final now = DateTime.now();
    print(
        '${now.day}${now.month}${now.year}${now.hour}${now.minute}${now.second}${now.microsecond}');
    String complaintId =
        '${now.day}${now.month}${now.year}${now.hour}${now.minute}${now.second}${now.microsecond}';
    String userName = nameEditingController.text;
    String userId = userIdEditingController.text;
    String userEmail = emailEditingController.text;
    String userMobile = mobileEditingController.text;
    String complaintText = complaintEditingController.text;
    setState(() {
      _object = ComplaintRegisterModel(
          complaintId: complaintId,
          userType: userType,
          userName: userName,
          userId: userId,
          userEmail: userEmail,
          userMobile: userMobile,
          complaintType: complaintType,
          complaintText: complaintText);
      print('cid : ${_object.complaintId}');
      print('utype : ${_object.userType}');
      print('uname : ${_object.userName}');
      print('uid : ${_object.userId}');
      print('email : ${_object.userEmail}');
      print('mobile : ${_object.userMobile}');
      print('ctype : ${_object.complaintType}');
      print('comtext : ${_object.complaintText}');
      //  print('object : ${_object}');

      isEnabled = false;
    });
    _showSnackBar('Complaint Submitted Successfully.');
    
  }

  void submitFunction(){
    // try {
    //   Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => SubmitComplaint(
    //       object: _object,
    //     ),
    //   ),
    // );
    // } 
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 3),
      content: Container(
          height: 80.0,
          child: Center(
            child: Text(
              message,
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          )),
      backgroundColor: primaryColor,
    );
    _scaffoldKey.currentState.hideCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
