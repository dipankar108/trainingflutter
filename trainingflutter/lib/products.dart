import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  Products({this.products});
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) => _buildListView(context, index),
          )
        : _noDataFound();
  }

  _buildListView(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        Container(
          height: 380,
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage(products[index]['imageUrl']),
          ),
        ),
        Container(
          height: 20,
          child: Text(products[index]['title']),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  _pageRoute(context, products[index]['title'],
                      products[index]['imageUrl'], products[index]['detail']);
                },
                child: Text('Details'),
                color: Colors.orangeAccent[400],
              ),
              SizedBox(
                width: 15,
              ),
              IconButton(icon: Icon(Icons.favorite_border), onPressed: () {})
            ],
          ),
        ),
      ],
    );
  }

  _noDataFound() {
    return Center(
      child: Text('No Product found Please add some products'),
    );
  }

  _pageRoute(BuildContext context, String product, imageUrl, detail) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => Product(
                  name: product,
                  imageUrl: imageUrl,
                  detail: detail,
                )));
  }
}
