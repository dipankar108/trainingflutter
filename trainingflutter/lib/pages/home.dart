import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          'Training Flutter',
        ),
      ),
      body: Productmanager(),
    );
  }
}
