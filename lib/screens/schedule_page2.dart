import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  bool _selectDate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Tutr Sessions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Aug',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    _DateWidget(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              7,
                                  (index)=> _DateWidget()
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Text("13:00", style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              Container(
                width: 20.0,
                height: 2.0,
                color: Colors.blue,
              ),
              Container(
                width: 140.0,
                height: 2.0,
                color: Colors.blue,
              ),
              Container(
                width: 40.0,
                height: 2.0,
                color: Colors.blue,
              ),
              Container(
                width: 100.0,
                height: 2.0,
                color: Colors.blue,
              ),
            ],
          )
      ),
    );
  }


  InkWell _DateWidget() {
    return InkWell(
      onTap: (){
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        decoration: _selectDate
            ? null
            : BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
                'Mo',
                style: TextStyle(
                    fontWeight: _selectDate?FontWeight.bold: FontStyle.normal,
                    color: _selectDate ? Colors.white : Colors.lightBlueAccent
                )
            ),
            Text(
                '3',
                style: TextStyle(
                    fontWeight: _selectDate?FontWeight.bold: FontStyle.normal,
                    color: _selectDate ? Colors.white : Colors.lightBlueAccent
                )
            ),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectDate ? Colors.white : Colors.lightBlueAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}

