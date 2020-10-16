// import 'package:flutter/material.dart';
// import 'package:flutter_auth/grid_view/bottom_bar.dart';

// class CookieDetail extends StatelessWidget {
//   final assetPath;

//   CookieDetail({
//     this.assetPath,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Padding(
//           padding: const EdgeInsets.only(right: 180.0),
//           // child: new Text(
//           //   'Me',
//           //   style: TextStyle(
//           //     fontSize: 35.0,
//           //     color: Color(0xff00DBD4),
//           //   ),
//           // ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         // leading: IconButton(
//         //   icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
//         //   onPressed: () {
//         //     Navigator.of(context).pop();
//         //   },
//         // ),
//         // title: Text('Pickup',
//         //     style: TextStyle(
//         //         fontFamily: 'Varela',
//         //         fontSize: 20.0,
//         //         color: Color(0xFF545D68))),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.radio, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Color(0xff00DBD4),
//         child: CircleAvatar(
//           radius: 55,
//           backgroundColor: Color(0xff00DBD4),
//           child: CircleAvatar(
//             radius: 30,
//             backgroundColor: Colors.white,
//             child: CircleAvatar(
//               backgroundColor: Color(0xff00DBD4),
//               radius: 22,
//               child: Text(
//                 'Go Live',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomBar(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:video_player/video_player.dart';

class CookieDetail extends StatefulWidget {
  final assetPath;

  CookieDetail({
    this.assetPath,
  });
  @override
  _Home createState() => _Home();
}

class _Home extends State<CookieDetail> with SingleTickerProviderStateMixin {
  bool abo = false;
  bool foryou = true;
  bool play = true;
  VideoPlayerController _controller;
  AnimationController animationController;
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);
  ScrollController _scrollController = ScrollController(initialScrollOffset: 0);
  PageController foryouController = new PageController();

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 5));
    animationController.repeat();
    _controller = VideoPlayerController.asset('assets/videos/vod.mp4')
      ..initialize().then((value) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          homescreen(),
          footer(),
          Positioned(
            bottom: 580,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      // color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.pink,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage:
                                AssetImage('assets/images/girl.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Emmely",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(
                              color: Color(0xff00DBD4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Icon(
                            Icons.add,
                            size: 15,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // Divider(color: Colors.white.withOpacity(0.5)),
                Padding(
                    padding: EdgeInsets.only(bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 1, right: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      //color: Colors.white54,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4, vertical: 4),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.white,
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '3 Star',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),

                                // Icon(Icons.home,
                                //     color: Colors.white.withOpacity(0.8), size: 30),
                                // Text('Accueil',
                                //     style: TextStyle(color: Colors.white, fontSize: 10))
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 5, right: 11),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      //color: Colors.white54,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4, vertical: 4),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Icon(
                                            Icons.fireplace,
                                            size: 15,
                                            color: Colors.white,
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("12.3k",
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                                // Text('Découvrir',
                                //     style: TextStyle(
                                //         color: Colors.white.withOpacity(0.8),
                                //         fontSize: 10))
                              ],
                            )),
                        // Padding(
                        //     padding: EdgeInsets.only(left: 20, right: 3),
                        //     child: buttonplus()),

                        Padding(padding: EdgeInsets.only(left: 90)),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  homescreen() {
    if (foryou) {
      return PageView.builder(
          controller: foryouController,
          onPageChanged: (index) {
            setState(() {
              _controller.seekTo(Duration.zero);
              _controller.play();
            });
          },
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        if (play) {
                          _controller.pause();
                          play = !play;
                        } else {
                          _controller.play();
                          play = !play;
                        }
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: VideoPlayer(_controller),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 65),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 7.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                  ),
                                  FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                      color: Colors.black45,
                                      //color: Colors.white54,
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => ChatListPageView()));
                                      },
                                      child: RichText(
                                          text: TextSpan(
                                              text: 'Sam',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                              ),
                                              children: <TextSpan>[
                                            TextSpan(
                                                text: ' beautiful beautiful',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ))
                                          ]))
                                      // color: Colors.white,
                                      )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 7.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 28),
                                    ),
                                    FlatButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                        color: Colors.black45,
                                        //color: Colors.white54,
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) => ChatListPageView()));
                                        },
                                        child: RichText(
                                            text: TextSpan(
                                                text: 'Sam',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0,
                                                ),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: ' beautiful beautiful',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ))
                                            ]))
                                        // color: Colors.white,
                                        )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 65, right: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 70,
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.favorite,
                                      size: 55, color: Color(0xff00DBD4)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            );
          });
    } else {
      _controller.play();
      return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          ));
    }
  }

  footer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // Divider(color: Colors.white.withOpacity(0.5)),
        Padding(
            padding: EdgeInsets.only(bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              //color: Colors.white54,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          // child: Icon(
                          //   Icons.message_rounded,
                          //   size: 20,
                          //   color: Colors.white,
                          // )
                          child: IconButton(
                            icon: Icon(
                              Icons.message_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomeScreen()));
                            },
                          ),
                        ),

                        // Icon(Icons.home,
                        //     color: Colors.white.withOpacity(0.8), size: 30),
                        // Text('Accueil',
                        //     style: TextStyle(color: Colors.white, fontSize: 10))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                //color: Colors.white54,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Icon(
                              Icons.menu,
                              size: 20,
                              color: Colors.white,
                            )),
                        // Text('Découvrir',
                        //     style: TextStyle(
                        //         color: Colors.white.withOpacity(0.8),
                        //         fontSize: 10))
                      ],
                    )),
                // Padding(
                //     padding: EdgeInsets.only(left: 20, right: 3),
                //     child: buttonplus()),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                //color: Colors.white54,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Icon(
                              Icons.play_arrow,
                              size: 20,
                              color: Colors.white,
                            )),
                        // Text('Boîte de réception',
                        //     style: TextStyle(
                        //         color: Colors.white.withOpacity(0.8),
                        //         fontSize: 10))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 9, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                //color: Colors.white54,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Icon(
                              Icons.people,
                              size: 20,
                              color: Colors.white,
                            )),
                        // Text('Moi',
                        //     style: TextStyle(
                        //         color: Colors.white.withOpacity(0.8),
                        //         fontSize: 10))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(left: 95)),
                AnimatedBuilder(
                  animation: animationController,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xff00DBD4).withOpacity(1),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/girl.jpg'),
                    ),
                  ),
                  builder: (context, _widget) {
                    return Transform.rotate(
                        angle: animationController.value * 6.3, child: _widget);
                  },
                )
              ],
            ))
      ],
    );
  }
}
