import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  Color color;
  Loading({this.color = Colors.teal});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: 2,
      ),
    );
  }
}