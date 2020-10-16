import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/live/home.dart';
import 'package:flutter_auth/Screens/live/host.dart';
import 'package:flutter_auth/Screens/live/join.dart';
import 'package:flutter_svg/svg.dart';

class ProfileFirst extends StatefulWidget {
  ProfileFirst({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: Stack(overflow: Overflow.visible, children: <Widget>[
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/girl_six.jpeg'),
                  fit: BoxFit.cover)),
          height: 840,
          child: Padding(
            padding: EdgeInsets.only(
              left: 30.0,
              right: 30.0,
              top: 50,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xff00FFF7),
                      radius: 54,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/girl.jpg'),
                        radius: 53.0,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          cursorColor: Color(0xff00DBD4),
                          autofocus: false,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: "Add a title",
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        // Text(
                        //   "Add a title",
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 33,
                        //       fontWeight: FontWeight.w300),
                        // ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 8),
                            decoration: BoxDecoration(
                                color: Color(0xff00DBD4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Select Tag',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Share To",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),

                        // Text(
                        //   "Protorix",
                        //   style: TextStyle(
                        //     color: Colors.white70,
                        //     // fontSize: 1.9 * SizeConfig.textMultiplier,
                        //   ),
                        // ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  height: 20,
                                  width: 20,
                                  color: Color(0xff00DBD4),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                                // width: 7 * SizeConfig.widthMultiplier,
                                ),
                            Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  height: 20,
                                  width: 20,
                                  color: Color(0xff00DBD4),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  "assets/icons/apple.svg",
                                  height: 20,
                                  width: 20,
                                  color: Color(0xff00DBD4),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 630, left: 80, right: 80, bottom: 20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            decoration: BoxDecoration(
                color: Color(0xff00DBD4),
                borderRadius: BorderRadius.all(Radius.circular(35))),
            child: Padding(
              padding: const EdgeInsets.only(right: 26, left: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Go Live',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
