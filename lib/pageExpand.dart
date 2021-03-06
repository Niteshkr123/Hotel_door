import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  @override
  _ExpandState createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: ' ',
        child: Stack(
          children: <Widget>[
            Container(
                foregroundDecoration: BoxDecoration(color: Colors.black26),
                height: 400,
                child: Image.asset('image/image2.jpg', fit: BoxFit.cover)),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 250),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 20.0),
                    child: Text(
                      "Le Lac \nSarovar Portico",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepOrange,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepOrange,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepOrange,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.deepOrange,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.deepOrange,
                                      ),
                                    ],
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        children: [TextSpan(text: "3.0/5")]),
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.deepOrange,
                            textColor: Colors.white,
                            child: Text(
                              "Checked out",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        const SizedBox(height: 10.0),
                        Column(children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              "Name",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.5,
                                  color: Colors.deepOrange),
                            ),
                            SizedBox(
                              width: 140.0,
                            ),
                            Text(
                              "Nitesh Kumar",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.black54),
                            ),
                          ]),
                          SizedBox(
                            height: 3.0,
                            child: Divider(
                              color: Colors.black54,
                            ),
                            width: 520.0,
                          ),
                          Row(children: <Widget>[
                            Text(
                              "Booking Details",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.5,
                                  color: Colors.deepOrange),
                            ),
                            SizedBox(
                              width: 60.0,
                            ),
                            Text(
                              "1 night, 1 room",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.black54),
                            ),
                          ]),
                          SizedBox(
                            height: 3.0,
                          ),
                          Row(children: <Widget>[
                            Text(
                              "Check In",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.5,
                                  color: Colors.deepOrange),
                            ),
                            SizedBox(
                              width: 115.0,
                            ),
                            Text(
                              "Mon 30 May 20",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 17.0,
                                  color: Colors.black54),
                            ),
                          ]),
                          SizedBox(
                            height: 3.0,
                          ),
                          Row(children: <Widget>[
                            Text(
                              "Check Out",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.5,
                                  color: Colors.deepOrange),
                            ),
                            SizedBox(
                              width: 110.0,
                            ),
                            Text(
                              "Wed 3 June 20",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.black54),
                            ),
                          ]),
                          SizedBox(
                            height: 5.0,
                            child: Divider(
                              color: Colors.black,
                            ),
                            width: 520.0,
                          ),
                          Row(children: <Widget>[
                            Text(
                              "Total Price",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                  color: Colors.deepOrange),
                            ),
                            SizedBox(
                              width: 134.0,
                            ),
                            Text(
                              "Rs. 3000",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.black54),
                            ),
                          ]),
                        ]),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
