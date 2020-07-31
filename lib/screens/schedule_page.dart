import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              topRow(),
                               _dateWidget()
                            ]
                        ),
                      )
        )
            );
  }

class _dateWidget extends StatefulWidget


  @override
  _dateWidgetState createState()=> _dateWidgetState();
  }

  class _dateWidgetState extends State<_dateWidget> {
    bool _selectDate = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
                               onTap: (){
                                 setState(() {
                                   _selectDate = !_selectDate;
                                 });
                               },
                               child: Container(
                                 decoration: _selectDate
                                     ?null
                                     :BoxDecoration(
                                   color: Colors.blue,
                                   borderRadius: BorderRadius.all(Radius.circular(4.0),
                                   ),
                                 ),
                                 padding: EdgeInsets.all(8.0),
                                 child: Column(
                                 children: <Widget>[
                                   Text(
                                     "Mo",
                                     style: TextStyle(
                                         color: _selectDate ? Colors.lightBlueAccent : Colors.white
                                     ),
                                   ),
                                   Text(
                                     "3",
                                     style: TextStyle(
                                         color: _selectDate ? Colors.lightBlueAccent : Colors.white
                                     ),
                                   ),
                                   Container(
                                     width: 4.0,
                                     height: 4.0,
                                     decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         color:  _selectDate ? Colors.white: Colors.lightBlueAccent
                                     ),
                                   ),
                                 ],
                            ),
                               ),
                             );
  }

  Row topRow() {
    return Row(
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
                            );
  }
}


