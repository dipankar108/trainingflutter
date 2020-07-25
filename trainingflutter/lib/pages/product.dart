import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String detail;
  Product(
      {@required this.name, @required this.imageUrl, @required this.detail});
  @override
  State<StatefulWidget> createState() {
    return _Product();
  }
}

class _Product extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Products Detail'),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(widget.imageUrl),
              ),
              Text(widget.name),
              Text(widget.detail),
            ],
          ),
        ));
  }
}
