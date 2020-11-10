import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/live/join.dart';

class ProductsItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  const ProductsItem(this.imageUrl, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: new GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => JoinPage(
                      channelName: 'hf',
                      channelId: 2,
                      username: name,
                      hostImage: imageUrl,
                      userImage: imageUrl,
                    )));
          },
          child: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff00DBD4), width: 2),
                borderRadius: BorderRadius.circular(35),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  imageUrl.toString(),
                  height: 165,
                  width: 175,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ))
          ]),
        ),
      ),
    ));
  }
}
