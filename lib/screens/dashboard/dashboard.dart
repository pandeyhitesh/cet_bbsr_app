import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Map> dashboardContent = [
    {
      'title': '       APPLY\nVISITORS PASS',
      'icon': Icon(Icons.assignment_ind),
      'link': ''
    },
    {'title': 'CAMPUS MAPS', 'icon': Icon(Icons.map), 'link': ''},
    {'title': 'COMPLAINT\n  REGISTER', 'icon': Icon(Icons.info), 'link': ''},
    {'title': 'NOTICE BOARD', 'icon': Icon(Icons.assignment_late), 'link': ''},
    {'title': 'PROGRAMME CLUBS', 'icon': Icon(Icons.location_city), 'link': ''},
    {'title': 'BUS TRACKER', 'icon': Icon(Icons.departure_board), 'link': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'DASHBOARD',
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
                   child: Center(child: Text('CET IMAGE...'),),
            ),
          ),
          Stack(
            children: [
              Positioned(
                left: 10.0,
                top: 210,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 500,
                  width: MediaQuery.of(context).size.width-20,
                  // color: Colors.red,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    children: [
                      showContentCard(context, dashboardContent[0]),
                      showContentCard(context, dashboardContent[1]),
                      showContentCard(context, dashboardContent[2]),
                      showContentCard(context, dashboardContent[3]),
                      showContentCard(context, dashboardContent[4]),
                      showContentCard(context, dashboardContent[5]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget showContentCard(BuildContext context, Map content) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(5.0),
        height: 50,
        width: 50,
        child: Card(
          elevation: 5.0,
          shadowColor: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              content['icon'],
              SizedBox(height: 15.0),
              Text(content['title']),
            ],
          ),
        ),
      ),
    );
  }
}
