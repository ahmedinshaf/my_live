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
        // padding: EdgeInsets.only(right: 20.0),
        padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
        width: MediaQuery.of(context).size.width - 30.0,
        height: MediaQuery.of(context).size.height - 30.0,
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (ctx, i) =>
              ProductsItem(list[i].image.toString(), list[i].username),
        ),
      ),
    );
  }

  Widget _buildCard(String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0, right: 3.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  // builder: (context) => CookieDetail(
                  builder: (context) => LoginScreen(
                      // assetPath: imgPath,

                      )));
            },
            child: Container(
                child: Column(children: [
              Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  )),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 165.0,
                  width: 175.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      color: Color(0xff00DBD4),
                    ),
                    image: DecorationImage(
                        image: AssetImage(list[1].username.toString()),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 135, left: 10),
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: <Widget>[
                        Text(
                          list.length.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // if (!added) ...[
                      //   Icon(Icons.shopping_basket,
                      //       color: Color(0xFFD17E50), size: 12.0),
                      // Text('Add to cart',
                      //     style: TextStyle(
                      //         fontFamily: 'Varela',
                      //         color: Color(0xFFD17E50),
                      //         fontSize: 12.0))
                    ],
                    // if (added) ...[
                    //   Icon(Icons.remove_circle_outline,
                    //       color: Color(0xFFD17E50), size: 12.0),
                    //   Text('3',
                    //       style: TextStyle(
                    //           fontFamily: 'Varela',
                    //           color: Color(0xFFD17E50),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 12.0)),
                    //   Icon(Icons.add_circle_outline,
                    //       color: Color(0xFFD17E50), size: 12.0),
                    // ]
                    // ]
                  ))
            ]))));
  }
}
