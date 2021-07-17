import 'package:flutter/material.dart';
import 'package:flutter_publication_4/dashboard_navigation_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _page = 0;

  void _bottomNavTapped(int index) {
    setState(() {
      _page = index;
    });
  }

  Widget _bodyFunction() {
    switch (_page) {
      case 0:
         return Container(
          margin: EdgeInsets.all(12),
           height: 600,
           width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/image1.jpg")),
          ),
        );
        break;
      case 1:
        return Container(
          margin: EdgeInsets.all(12),
          height: 600,
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/image2.jpg")),
          ),
        );
        break;
      case 2:
        return Container(
          margin: EdgeInsets.all(12),
          height: 600,
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/image3.jpg")),
          ),
        );
        break;
      default:
        return Container(color: Colors.white);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Flutter Series: Part 4"),
        centerTitle: true,
      ),
      body: _bodyFunction(),
      bottomNavigationBar: DashboardNavigationBar(_bottomNavTapped),
    );
  }
}
