import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/live/join.dart';

class ProductsItem extends StatelessWidget {
  final String imageUrl;

  final String name;

  const ProductsItem(this.imageUrl, this.name);
  @override
  Widget build(BuildContext context) {
    return GridTile(
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
        child: Image.network(
          imageUrl.toString(),
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        title: Text(
          name,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
