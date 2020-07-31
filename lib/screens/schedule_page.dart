import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Container(height: 64.0, color: Color(0xff5b418f),),
            Container(
              color: Color(0xff5b418f),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Daily',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'meetings',
                            style: TextStyle(
                              color: Color(0xffa79abf),
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Jan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        7,
                            (index) => dateWidget(index: index),),
                    ),
                  ),

                ],
              ),
            ),
            cardWidget(),
            cardWidget(),
            cardWidget(),
            cardWidget(),
          ],
        ),
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('13:00', style: TextStyle(
                fontWeight: FontWeight.bold,),
              ),
              lineGen(
                  lines: [20.0, 30.0, 40.0, 10.0]
              ),
            ],
          ),
        ),
        SizedBox(width: 12.0,),
        Expanded(
          child: Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xff654f91),

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 4.0),
              color: Color(0xfffcf9f5),
              padding: EdgeInsets.only(
                  left: 16.0,
                  top: 8.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 21.0,
                    child: Row(
                      children: [
                        Text('13:00 - 14:40'),
                        VerticalDivider(),
                        Text('Blue str, 21'),
                      ],
                    ),
                  ),
                  Text('Project Planning', style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


class lineGen extends StatelessWidget {
  final lines;
  const lineGen({
    Key key, this.lines,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(4, (index) => Container(
        height: 2.0,
        width: lines[index],
        color: Color(0xffd0d2d8),
        margin: EdgeInsets.symmetric(vertical: 16.0),
      )),
    );
  }
}


class dateWidget extends StatefulWidget {

  final index;

  const dateWidget({Key key, this.index}) : super(key: key);

  @override
  _dateWidgetState createState() => _dateWidgetState();
}

class _dateWidgetState extends State<dateWidget> {

  bool _selectDate = true;
  var list = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        decoration: _selectDate ? null : BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(4.0),
        ),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              list[widget.index],
              style: TextStyle(
                color: _selectDate ?  Color(0xff8e7daf) : Colors.white,
                fontWeight: _selectDate ? FontWeight.normal : FontWeight.bold ,
              ),
            ),
            Text(
              '${10 + widget.index}',
              style: TextStyle(color: _selectDate ?  Color(0xff8e7daf) : Colors.white,
                fontWeight: _selectDate ? FontWeight.normal : FontWeight.bold,
              ),
            ),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _selectDate ?  Color(0xff8e7daf) : Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

