
import 'package:flutter/material.dart';
import 'package:flutter_splash_screan_login/Animations/FadeAnimation.dart';
import 'package:flutter_splash_screan_login/Register.dart';
import 'package:page_transition/page_transition.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 200),
            FadeAnimation(1.2, Text("Helloe there ,\nWelcome Back",
            style: TextStyle(color: Colors.white,fontSize: 40, fontWeight:FontWeight.bold),)),
            SizedBox(height: 40),
            FadeAnimation(1.5, Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey[300]))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                        hintText: "Username"
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                        hintText: "Password"
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 20),
            Container(
              child: FadeAnimation(1,Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child:  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                    ),

                ],
              ),
            ),
            ),
            SizedBox(height: 10),
            Container(
              child: FadeAnimation(1, Row(
                children: <Widget>[
                  Container(
                    width: 370,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue[800]
                ),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white),),),
                  ),
                ],
              ))
            ),
            SizedBox(height: 20),
            Center(
              child:Text(
                "Do you haven't account ?",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: InkWell(
                child: Text("Register", style: TextStyle(color: Colors.white),),
                onTap: (){
                   Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: Register()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
