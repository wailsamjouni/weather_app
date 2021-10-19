import 'package:flutter/material.dart';
import 'package:weather_app/widgets/appbar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double heightOfScreen = MediaQuery.of(context).size.height;
    final double widthOfScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Positioned(
            bottom: heightOfScreen / 2.3,
            child: Image.network(
              'https://i.ibb.co/Y2CNM8V/new-york.jpg',
              height: heightOfScreen,
            )),
        Positioned(
            bottom: 0.0,
            child: Container(
              color: Color(0xff38383d),
              height: heightOfScreen / 2.2,
              width: widthOfScreen,
            )),
        AppBarWidget(),
      ],
    );
  }
}
