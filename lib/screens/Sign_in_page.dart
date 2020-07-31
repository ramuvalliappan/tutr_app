import 'package:flutter/material.dart';
import 'package:tutr_app/main.dart';
import 'package:tutr_app/screens/profile_page.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(color: Colors.black, fontSize: 60),
                    ),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 7,
                                          offset: Offset(0, 5))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                      )),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Email Address",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none)),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black))),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Password",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none)),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MyStatefulWidget())),
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green[900]),
                                  //color: Color(0xff42f572)),
                                  child: Center(
                                      child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ))),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.lightGreen),
                              child: Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ])),
        ])),
      ),
    );
  }
}
