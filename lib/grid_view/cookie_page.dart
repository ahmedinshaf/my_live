import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/live/SplashScreen.dart';
import 'package:flutter_auth/Screens/live/lineMain.dart';
import 'package:flutter_auth/Screens/live/loginScreen.dart';
import 'package:flutter_auth/Screens/my_posts/postsCookie.dart';
import 'package:flutter_auth/grid_view/categories.dart';
import 'package:flutter_auth/grid_view/cookie_detail.dart';
import 'package:flutter_auth/grid_view/live_item.dart';
import 'package:flutter_auth/models/live.dart';

class CookiePage extends StatefulWidget {
  @override
  _CookiePageState createState() => _CookiePageState();
}

class _CookiePageState extends State<CookiePage> {
  final FlareControls flareControls = FlareControls();
  final databaseReference = Firestore.instance;
  List<Live> list = [];
  bool ready = false;
  Live liveUser;
  var name;
  var image =
      'https://nichemodels.co/wp-content/uploads/2019/03/user-dummy-pic.png';
  var username;
  var postUsername;

  @override
  void initState() {
    super.initState();
    list = [];
    // liveUser = new Live(username: username, me: true, image: image);
    // setState(() {
    //   list.add(liveUser);
    // });
    dbChangeListen();
    /*var date = DateTime.now();
    var newDate = '${DateFormat("dd-MM-yyyy hh:mm:ss").format(date)}';
    */
  }

  void dbChangeListen() {
    databaseReference
        .collection('liveuser')
        .orderBy("time", descending: true)
        .snapshots()
        .listen((result) {
      // Listens to update in appointment collection

      setState(() {
        list = [];
      });
      result.documents.forEach((result) {
        setState(() {
          list.add(new Live(
              username: result.data['name'],
              image: result.data['image'],
              channelId: result.data['channel'],
              me: false));
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: MediaQuery.of(context).size.width - 40.0,
        height: MediaQuery.of(context).size.height - 30.0,
        child: Container(
          child: GridView.builder(
            padding: const EdgeInsets.fromLTRB(2, 10, 5, 10),
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.942,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (ctx, i) =>
                ProductsItem(list[i].image.toString(), list[i].username),
          ),
        ),
      ),
    );
  }
}
