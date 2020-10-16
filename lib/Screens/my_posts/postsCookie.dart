import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/my_posts/postsCookieDetails.dart';

class PostsCookie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body:
      
       ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 20.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 30.0,
              child: GridView.count(
                crossAxisCount: 3,
                 primary: false,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('assets/images/girl_two.jpg', context),
                  _buildCard('assets/images/girl_eight.jpg', context),
                  _buildCard('assets/images/girl_five.jpg', context),
                  _buildCard('assets/images/girl_six.jpg', context),
                  _buildCard('assets/images/girl_girl.jpg', context),
                  _buildCard('assets/images/girl_four.jpeg', context),
                  // _buildCard('assets/images/girl_six.jpeg', context),
                  // _buildCard('assets/images/girl_six.jpeg', context),
                  // _buildCard('assets/images/girl_six.jpeg', context),
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
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(    // 41-46 commented
            //       builder: (context) => PostsCookieDetails(
            //             assetPath: imgPath,
            //           )));
            // },
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
                  padding: EdgeInsets.all(1.9),
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
                  child: Container(                           // 60-
                      height: 175.0,
                      width: 175.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(
                            color: Color(0xff00DBD4),
                          ),
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover)))),
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
                  padding: EdgeInsets.only(left: 0.0, right: 0.0),    //98-102 now
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
