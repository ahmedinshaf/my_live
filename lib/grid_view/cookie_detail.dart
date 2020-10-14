import 'package:flutter/material.dart';
import 'package:flutter_auth/grid_view/bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath;

  CookieDetail({
    this.assetPath,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(right: 180.0),
          // child: new Text(
          //   'Me',
          //   style: TextStyle(
          //     fontSize: 35.0,
          //     color: Color(0xff00DBD4),
          //   ),
          // ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        // title: Text('Pickup',
        //     style: TextStyle(
        //         fontFamily: 'Varela',
        //         fontSize: 20.0,
        //         color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.radio, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff00DBD4),
        child: CircleAvatar(
          radius: 55,
          backgroundColor: Color(0xff00DBD4),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Color(0xff00DBD4),
              radius: 22,
              child: Text(
                'Go Live',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
