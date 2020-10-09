import 'package:flutter/material.dart';
import 'package:flutter_auth/grid_view/cookie_page.dart';
import 'package:flutter_auth/profile/user_profile.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0.0,
        color: Color(0xff00DBD4),
        elevation: 9.0,
        clipBehavior: Clip.none,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                        width: 2,
                        color: Color(0xff00DBD4),
                      ))),
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                color: Color(0xff00DBD4),
                              ),
                              onPressed: () {
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => CookiePage()));
                              })
                        ],
                      )),
                  Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                        width: 2,
                        color: Color(0xff00DBD4),
                      ))),
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          // Icon(Icons.search, color: Color(0xFF676E79)),
                          // Icon(Icons.person_outline, color: Color(0xFF676E79),)
                          IconButton(
                              icon: Icon(
                                Icons.person_outline,
                                color: Color(0xFF676E79),
                              ),
                              onPressed: () {
                                // Navigator.pop(context);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UserProile()));
                              })
                        ],
                      )),
                ])));
  }
}
