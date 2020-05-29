import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pageExpand.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'pageExpand2.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroAnimation(),
    );
  }
}

class HeroAnimation extends StatefulWidget {
  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(seconds: 2));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(context),
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Expand1()),
                  );
                },
                child: Hero(
                  tag: 'second',
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                        )),
                    //alignment: Alignment.center,
                    height: 150,
                    width: 100,
                    //color: Colors.orange,
                    child: Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          'Your Booking Details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Balsamiq Sans',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                        width: 200.0,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Text(
                          'Check in:   Wed 10 June 20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        //padding: EdgeInsets.only(left: 15.0,bottom: 80.0),
                        child: Text(
                          ' Check out:   Tue 19 June 20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Expand()),
                  );
                },
                child: Hero(
                  tag: 'first',
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                        )),
                    //alignment: Alignment.center,
                    height: 150,
                    width: 100,
                    //color: Colors.orange,
                    child: Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          'Your Booking Details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Balsamiq Sans',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                        width: 200.0,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Text(
                          'Check in:   Mon 30 May 20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        //padding: EdgeInsets.only(left: 15.0,bottom: 80.0),
                        child: Text(
                          ' Check out:   Wed 3 June 20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*_getExpandedPage(context, id) {
  return Scaffold(
    appBar: _customAppBar(context),
    body: Hero(
      tag: id,
      child: Material(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.teal,
          child: Text(
            id,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
  );
}*/

_customAppBar(context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(65),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.orange.shade700,
        Colors.orange.shade300,
      ])),
      alignment: Alignment.bottomLeft,
      child: Row(children: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 65.0,
        ),
        Text(
          'Your Booking',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22.0),
        ),
      ]),
    ),
  );
}
