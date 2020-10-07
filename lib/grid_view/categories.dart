import 'package:flutter/material.dart';
import 'package:flutter_auth/grid_view/bottom_bar.dart';
import 'package:flutter_auth/grid_view/cookie_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var liveStream = Icons.play_circle_filled_outlined;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.search, color: Color(0xFF545D68)),
        //   alignment: Alignment.centerRight,
        //   padding: new EdgeInsets.all(0),
        //   onPressed: () {},
        // ),
        // title: Text('Pickup',
        //     style: TextStyle(
        //         fontFamily: 'Varela',
        //         fontSize: 20.0,
        //         color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Color(0xFF545D68)),
            alignment: Alignment.centerLeft,
            padding: new EdgeInsets.all(0),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            alignment: Alignment.centerLeft,
            padding: new EdgeInsets.all(0),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          // SizedBox(height: 15.0),
          // Text('Categories',
          //     style: TextStyle(
          //         fontFamily: 'Varela',
          //         fontSize: 42.0,
          //         fontWeight: FontWeight.bold)),
          // SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelStyle: TextStyle(fontSize: 35.0),
              labelColor: Color(0xff00DBD4),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xff00FFF7),
              unselectedLabelStyle: TextStyle(fontSize: 20.0),
              tabs: [
                Tab(
                  child: Text('Nearby',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Varela',
                        // fontSize: 25.0,
                      )),
                ),
                Tab(
                  child: Text('Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontFamily: 'Varela',
                        // fontSize: 25.0,
                      )),
                ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 150.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiePage(),
                CookiePage(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff00DBD4),
        child: Icon(liveStream),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
