import 'dart:html';
import 'package:flutter/material.dart';

import 'home.dart';
// import 'package:toast/toast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  // var _password = TextEditingController();
  // var _con_password = TextEditingController();
  var user, pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: Container(
            color: Colors.white,
            child: SafeArea(
                child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          "images/shoping.png",
                        ),
                      ),
                      Text("Welcome To my Shope",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30.0)),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        ),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter user name ";
                              } else {
                                setState(() {
                                  user = value;
                                });
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.face,
                                color: Theme.of(context).primaryColor,
                              ),
                              labelStyle: TextStyle(
                                  color: Theme.of(context).primaryColor),
                              border: InputBorder.none,
                              labelText: "Username",
                            )),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        ),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Password ";
                              } else {
                                setState(() {
                                  pass = value;
                                });
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Theme.of(context).primaryColor,
                              ),
                              labelStyle: TextStyle(
                                  color: Theme.of(context).primaryColor),
                              border: InputBorder.none,
                              labelText: "Password",
                            )),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print(
                                "User" + " " + user + " " + "Password" + pass);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("login successful"),
                            ));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          }
                          ;
                          // _formKey.currentState?.validate;
                        },
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text("Login", style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Do Not Have A Account"),
                          FlatButton(
                            onPressed: () {},
                            textColor: Theme.of(context).primaryColor,
                            child: Text('Register Now'),
                          )
                        ],
                      )
                    ]),
              ),
            ))));
  }
}
