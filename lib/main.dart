import 'package:accobo/pages/AddItem.dart';
import 'package:accobo/pages/Calendar.dart';
import 'package:accobo/pages/DetailView.dart';
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
      DetailView(),
      Calendar()
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
         middle: Text("Cupertino"),
         trailing: Icon(CupertinoIcons.search),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CupertinoColors.activeBlue,
          onPressed: null,
          child: Icon(CupertinoIcons.pencil),
        ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.collections),
            title: Text('')
          )
        ],
      ),
    );
  }
}