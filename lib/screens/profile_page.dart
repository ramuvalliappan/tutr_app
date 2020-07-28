import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlueAccent
  ),
  home: ProfilePage(),
));

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                    'assets/profile_picture.webp', fit: BoxFit.cover),
                height: 100.0,
                width: 100.0,
              ),
              SizedBox(height: 20,),
              Container(
                child: Image.asset(
                    'assets/five_star_rating.jpg', fit: BoxFit.cover),
                height: 100.0,
                width: 100.0,
              )
            ],
          ),
          SizedBox(height: 20,),
          ListTile(
            title: Center(child: Text('Peter Johnson')),
            subtitle: Text('Skills: Math, Physics\n Education: 3rd year mechanical engineering student at Stanford University\n 35 USD per hour'),
          ),
          FlatButton.icon(
          onPressed: () {},
            icon: Icon(
                Icons.chat),
            label: Text(
                'Hire Me'
            ),
          ),
        ]
    );
  }
}


