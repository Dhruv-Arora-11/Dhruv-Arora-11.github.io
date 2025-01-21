import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
