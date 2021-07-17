import 'package:flutter/material.dart';

class DashboardNavigationBar extends StatefulWidget {

  final Function _callback;

  @override
  State<StatefulWidget> createState() {
    return DashboardNavigationBarState(_callback);
  }
  DashboardNavigationBar(this._callback);
}

class DashboardNavigationBarState extends State<DashboardNavigationBar> {
  int _selectedIndex = 0;

  Function _callback;

  DashboardNavigationBarState(this._callback);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
         _callback(index);
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.audiotrack_outlined,
            ),
            label: "Music"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Settings",
        ),
      ],
    );
  }
}
