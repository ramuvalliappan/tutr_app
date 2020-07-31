

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tutr_app/screens/schedule_page2.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlueAccent
  ),
  home: ProfilePage(),
));

class ProfilePage extends StatelessWidget {

  double rating = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 25.0,),
              Container(
                child: Image.asset(
                    'assets/profile_picture.webp', fit: BoxFit.cover),
                height: 300.0,
                width: 300.0,
              ),
              SizedBox(height: 20,),
              SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {
                    rating = v;
                  },
                  starCount: 5,
                  rating: rating,
                  size: 40.0,
                  isReadOnly: false,
                  //fullRatedIconData: Icons.blur_off,
                  //halfRatedIconData: Icons.blur_on,
                  color: Colors.yellow,
                  borderColor: Colors.yellow,
                  spacing: 0.0
              ),
              /*
              Container(
                color: Colors.blue,
                child: Image.asset(
                    'assets/five_star_rating.jpg', fit: BoxFit.fill),
                height: 75.0,
                width: 500.0,
              ),
              */

              Text('Peter Johnson',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Text('Skills: Math',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),),
              Text(
                'Physics Education: 3rd year mechanical \n engineering student at Stanford University',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),),
              Text('\$35 USD per hour',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),),
              SizedBox(height: 20,),

              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                    Icons.chat),
                label: Text(
                    'Hire Me'
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => chat_page())),
              )
            ],
          ),
        )
    );
  }
}

