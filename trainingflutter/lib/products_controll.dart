import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProducts;
  ProductControl({@required this.addProducts});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => addProducts({
        'title': 'Blue_T-Shirt-01',
        'imageUrl': 'assets/images/blue_T_shirt.jpg',
        'detail': 'This is a blue t shirt'
      }),
      child: Text(
        'Add Product',
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.redAccent,
    );
  }
}
