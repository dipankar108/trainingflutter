import 'package:flutter/material.dart';
import './products.dart';
import './products_controll.dart';

class Productmanager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Productmanager();
  }
}

class _Productmanager extends State<Productmanager> {
  List<Map<String, dynamic>> _products = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ProductControl(addProducts: _addProducts),
              Expanded(child: Products(products: _products)),
            ],
          ),
        ),
      ),
    );
  }

  _addProducts(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }
}
