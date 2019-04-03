import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marquee',
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: ListView(
          padding: EdgeInsets.only(top: 50.0),
          children: <Widget>[
            _buildMarquee(),
            _buildComplexMarquee(),
          ].map(_wrapWithStuff).toList(),
        ),
      ),
    );
  }

  Widget _buildMarquee() {
    return Marquee(
      text: 'There lived a boy who once told a story:',
      blankSpace: 20.0,
    );
  }

  Widget _buildComplexMarquee() {
    return Marquee(
      texts: ['About Sunchit', 'About Sunchit'],
      style: TextStyle(fontWeight: FontWeight.bold),
      scrollAxis: Axis.horizontal,
      blankSpace: 20.0,
      velocity: 80.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 50.0,
        color: Colors.white,
        child: child,
      ),
    );
  }
}
