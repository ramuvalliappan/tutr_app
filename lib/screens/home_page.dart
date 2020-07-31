import 'package:flutter/material.dart';

import 'package:tutr_app/screens/recent_chats_page.dart';

import 'chat_home_page.dart';
import 'favorite_contacts_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List names = ['Peter', 'John', 'David', 'Mary'];
  List subjects = ['Math', 'Calculus', 'History', 'English'];
  List profiles = ['assets/profile_picture.webp', 'assets/john.jpg', 'assets/david.jpg', 'assets/mary.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Your Tutors',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 250.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: names.length, itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 250.0,
                              width: 250.0,
                              child: Image.asset(profiles[index], fit: BoxFit.cover,),
                            ),
                          ),

                          Text(names[index]),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
