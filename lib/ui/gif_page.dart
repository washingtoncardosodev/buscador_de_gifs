import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(_gifData["title"]),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share), 
            onPressed: () {
              Share.share(_gifData["embed_url"]);
            }
          )
        ],
      ),
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"])
      ),
    );
  }
}