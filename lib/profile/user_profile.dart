import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/live_stream/live_stream.dart';
import 'package:flutter_auth/Screens/serach_bar/SearchBarScreen.dart';
import 'package:flutter_auth/grid_view/bottom_bar.dart';
import 'package:flutter_auth/Screens/messages/ChatListPageView.dart';

class UserProile extends StatelessWidget {
  // final assetPath;

  // UserProile({
  //   this.assetPath,
  // });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(right: 182.0),
          child: new Text(
            'Me',
            style: TextStyle(
              fontSize: 35.0,
              color: Color(0xff00DBD4),
            ),
          ),
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchBarScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.radio, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white])),
              child: Container(
                width: double.infinity,
                height: 300.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Hero(
                      //     tag: assetPath,

                      //     child: Image.asset(
                      //       assetPath,
                      //       height: 100.0,
                      //       width: 100.0,

                      //       fit: BoxFit.fill,
                      //     ),
                      //   ),
                      CircleAvatar(
                        backgroundColor: Color(0xff00FFF7),
                        radius: 56,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/girl.jpg'),
                          radius: 53.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "ID:611115712",
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text(
                        "ID:611115712",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "15",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "24",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        // fontWeight: FontWeight.bold,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: 'Fans',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                            ),
                                            children: <TextSpan>[
                                          TextSpan(
                                              text: '+11',
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ]))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.event,
                    color: Color(0xff00DBD4),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(5, -1, 30, 25),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChatListPageView()));
                    },
                    child: Text(
                      "My Post",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Color(0xff00DBD4),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(5, -1, 30, 25),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatListPageView()));
                    },
                    child: Text(
                      "Messages",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.wallet_giftcard,
                    color: Color(0xff00DBD4),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(5, -1, 30, 25),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChatListPageView()));
                    },
                    child: Text(
                      "Wallet",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Color(0xff00DBD4),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(5, -1, 30, 25),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChatListPageView()));
                    },
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.help_center,
                    color: Color(0xff00DBD4),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(5, -1, 30, 25),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChatListPageView()));
                    },
                    child: Text(
                      "Help & Feedback",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0),
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeLive()));
        },
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
