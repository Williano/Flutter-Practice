import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 5),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, double _value, Widget child) {
        // return Opacity(opacity: _value, child: child);
        return Opacity(
          opacity: _value,
          child: Padding(
            padding: EdgeInsets.only(top: _value * 20),
            child: child,
          ),
        );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
