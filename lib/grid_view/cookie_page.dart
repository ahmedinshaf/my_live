import 'package:flutter/material.dart';
import 'package:flutter_auth/grid_view/cookie_detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              // padding: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 30.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.888,
                childAspectRatio: 0.93,
                children: <Widget>[
                  _buildCard('assets/images/girl.jpg', context),
                  _buildCard('assets/images/girl_two.jpg', context),
                  _buildCard('assets/images/girl_eight.jpg', context),
                  _buildCard('assets/images/girl_three.jpg', context),
                  _buildCard('assets/images/girl_five.jpg', context),
                  _buildCard('assets/images/girl_six.jpeg', context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0, right: 3.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CookieDetail(
                        assetPath: imgPath,
                      )));
            },
            child: Container(
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(35.0),
                //     boxShadow: [
                //       BoxShadow(
                //           color: Colors.grey.withOpacity(0.2),
                //           spreadRadius: 3.0,
                //           blurRadius: 5.0)
                //     ],
                //     color: Colors.white),
                child: Column(children: [
              Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // children: [
                    //   isFavorite
                    //       ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                    //       : Icon(Icons.favorite_border,
                    //           color: Color(0xFFEF7532))
                    // ]
                  )),
              Hero(
                  tag: imgPath,
                  child: Container(
                    // child: Text('Test',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 20.0,
                    //     )),
                    height: 165.0,
                    width: 175.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      border: Border.all(
                        color: Color(0xff00DBD4),
                      ),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(top: 135, left: 10),
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Test",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              // SizedBox(height: 7.0),
              // Text(price,
              //     style: TextStyle(
              //         color: Color(0xFFCC8053),
              //         fontFamily: 'Varela',
              //         fontSize: 14.0)),
              // Text(name,
              //     style: TextStyle(
              //         color: Color(0xFF575E67),
              //         fontFamily: 'Varela',
              //         fontSize: 14.0)),
              // Padding(
              //     padding: EdgeInsets.all(0.0),
              //     child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
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
