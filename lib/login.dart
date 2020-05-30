import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pageTransition.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:connectivity/connectivity.dart';

class Login extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(
      builder: (BuildContext context) {
        return OfflineBuilder(
          connectivityBuilder: (BuildContext context,
              ConnectivityResult connectivity, Widget child) {
            final bool connected = connectivity != ConnectivityResult.none;
            //final bool connected = connectivity == ConnectivityResult.wifi;
            return Stack(
              fit: StackFit.expand,
              children: [
                child,
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  color: connected ? Color(0xFF00EE44) : Colors.black87,
                  child: connected
                      ? Stack(children: <Widget>[
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    colors: [
                                  Colors.orange[900],
                                  Colors.orange[800],
                                  Colors.orange[400]
                                ])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 80,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 40),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Welcome Back",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(60),
                                        )),
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors
                                                            .orange.shade300,
//color: Color.fromRGBO(225, 95, 27, .3),
                                                        blurRadius: 20,
                                                        offset: Offset(0, 10))
                                                  ]),
                                              child: Form(
                                                key: _key,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]))),
                                                      child: TextFormField(
                                                        cursorColor:
                                                            Colors.deepOrange,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "Email Id or Phone number",
                                                            hintStyle: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            border: InputBorder
                                                                .none),
//obscureText: true,
                                                        validator: (value) {
                                                          if (value.isEmpty) {
                                                            return "Name can't be empty";
                                                          } else if (value
                                                                  .length <=
                                                              4) {
                                                            return "Too short for validation";
                                                          } else
                                                            return null;
                                                        },
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]))),
                                                      child: TextFormField(
                                                        cursorColor:
                                                            Colors.deepOrange,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "Enter your Passkey",
                                                            hintStyle: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            border: InputBorder
                                                                .none),
                                                        obscureText: true,
                                                        validator: (value) {
                                                          if (value.isEmpty) {
                                                            return "Passkey can't be empty";
                                                          } else if (value
                                                                  .length <=
                                                              4) {
                                                            return "Wrong Passkey";
                                                          } else
                                                            return null;
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                            ),
                                            SizedBox(
                                              height: 40,
                                            ),
                                            FlatButton(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: Container(
                                                height: 50,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.orange[900]),
                                                child: Center(
                                                  child: Text(
                                                    "Login",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                if (_key.currentState
                                                    .validate()) {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SecondRoute()),
                                                  );
                                                }
                                              },
                                            ),
                                            SizedBox(
                                              height: 50,
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            height: 32.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Center(
                                    child: Text(
                                      "ONLINE",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
                                    ),
                                  ),
                                  color: Colors.lightGreen,
                                  height: 25.0,
                                  width: 355.0,
                                ),
                              ],
                            ),
                          ),
                        ])
                      : Stack(children: <Widget>[
                          Container(
                            child: Image.asset('image/offline1.png'),
                            height: 900.0,
                            width: 500.0,
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            height: 32.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "OFFLINE",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17.0),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                SizedBox(
                                  width: 12.0,
                                  height: 12.0,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.0,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                ),
              ],
            );
          },
          child: Container(),
        );
      },
    ));
  }
}
