import 'package:cet_bbsr_app/contstans.dart';
import 'package:cet_bbsr_app/models/complaint_register_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SubmitComplaint extends StatefulWidget {
  final ComplaintRegisterModel object;
  SubmitComplaint({this.object});
  @override
  _SubmitComplaintState createState() => _SubmitComplaintState(this.object);
}

class _SubmitComplaintState extends State<SubmitComplaint> {
  ComplaintRegisterModel _object;
  _SubmitComplaintState(this._object);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'SUBMIT COMPLAINT',
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
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Submit Your Complaint',
                    style: TextStyle(
                      fontSize: 24,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'Complaint Id : ${_object.complaintId}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'User Type : ${_object.userType}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'Name : ${_object.userName}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'User Id : ${_object.userId}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'Email Id : ${_object.userEmail}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'Mobile No. : ${_object.userMobile}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText:
                                'Complaint Type : ${_object.complaintType}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Theme(
                        data: ThemeData(primaryColor: primaryColor),
                        child: TextFormField(
                          maxLines: 5,
                          enabled: false,
                          style: TextStyle(color: primaryColor),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: 'Complaint : ${_object.complaintText}',
                            labelStyle: TextStyle(color: primaryColor),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: 2.0,
                              ),
                            ),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              // color: Colors.blue,
                              padding: EdgeInsets.all(10.0),
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              child: FlatButton(
                                onPressed: () {
                                  // submitFunction();
                                },
                                child: Text('SUBMIT'),
                                color: primaryColor,
                              ),
                            ),
                          ],
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
}
