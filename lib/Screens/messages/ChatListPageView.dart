import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/messages/ChatListViewItem.dart';

class ChatListPageView extends StatefulWidget {
  @override
  _ChatListPageViewState createState() => _ChatListPageViewState();
}

class _ChatListPageViewState extends State<ChatListPageView> {
  // bool isLoading = true;

  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 2), () {
    //   setState(() {
    //     isLoading = false;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    // if (isLoading == true) {
    //   return Loading();
    // } else {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Color(0xff00DBD4),
            ),
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                'Messages',
                style: TextStyle(color: Color(0xff00DBD4), fontSize: 35),
              ),
            ),
          ),
        ),
        body: Container(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                )),
            child: ListView(
              children: <Widget>[
                ChatListViewItem(
                  hasUnreadMessage: true,
                  image: AssetImage('assets/images/girl_two.jpg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Bree Jarvis",
                  newMesssageCount: 8,
                  time: "19:27 PM",
                ),
                ChatListViewItem(
                  hasUnreadMessage: true,
                  image: AssetImage('assets/images/girl_three.jpg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Alex",
                  newMesssageCount: 5,
                  time: "19:27 PM",
                ),
                ChatListViewItem(
                  hasUnreadMessage: false,
                  image: AssetImage('assets/images/girl_four.jpg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Carson Sinclair",
                  newMesssageCount: 0,
                  time: "19:27 PM",
                ),
                ChatListViewItem(
                  hasUnreadMessage: false,
                  image: AssetImage('assets/images/girl_five.jpg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Lucian Guerra",
                  newMesssageCount: 0,
                  time: "19:27 PM",
                ),
                ChatListViewItem(
                  hasUnreadMessage: false,
                  image: AssetImage('assets/images/girl_six.jpeg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Sophia-Rose Bush",
                  newMesssageCount: 0,
                  time: "19:27 PM",
                ),
                ChatListViewItem(
                  hasUnreadMessage: false,
                  image: AssetImage('assets/images/girl_eight.jpg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Mohammad",
                  newMesssageCount: 0,
                  time: "19:27 PM",
                ),
                ChatListViewItem(
                  hasUnreadMessage: false,
                  image: AssetImage('assets/images/girl.jpg'),
                  lastMessage:
                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                  name: "Jimi Cooke",
                  newMesssageCount: 0,
                  time: "19:27 PM",
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // }
  }
}
