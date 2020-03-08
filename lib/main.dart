import 'package:accobo/pages/AddItemRoute.dart';
import 'package:accobo/pages/CalendarRoute.dart';
import 'package:accobo/pages/HistoryRoute.dart';
import 'package:accobo/pages/MainRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return CupertinoApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<Main> {

  int _selectedIndex = 0;
  static List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = <Widget>[
      MainRoute(),
      CalendarRoute(),
      HistorytRoute()
    ];
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        child: _pages.elementAt(_selectedIndex),
        navigationBar: CupertinoNavigationBar(
         leading: Icon(CupertinoIcons.back),
         middle: Text("Accobo"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CupertinoColors.activeBlue,
          onPressed:() => Navigator.push(context, CupertinoPageRoute(builder: (context) => AddItem())),
          child: Icon(CupertinoIcons.pencil),
        ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Main')
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock),
            title: Text('Calendar')
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.collections),
            title: Text('History')
          )
        ],
      ),
    );
  }
}