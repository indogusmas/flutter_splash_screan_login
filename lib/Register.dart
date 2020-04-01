import 'package:flutter/material.dart';




class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Register',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Padding(padding: EdgeInsets.only(left: 20, top: 20, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'You Email',
                    focusColor: Colors.white
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
               Padding(padding: EdgeInsets.only(left: 20, top: 5, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name'
                  ),
                ),
              ),
               Padding(padding: EdgeInsets.only(left: 20, top: 5, right: 10, bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password'
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Container(
                width: 300,
                height: 45,
                child: RaisedButton(
                  onPressed: (){},
                  child: Text("Register",style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  color: Colors.blue[800],
                ),

              )

              
            ],
          )),
    );
  }
}