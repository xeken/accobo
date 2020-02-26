import 'package:accobo/pages/AddItem.dart';
import 'package:accobo/pages/DetailView.dart';
import 'package:accobo/pages/calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainRouter extends StatefulWidget{
  MainRouter({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainRouter createState() => _MainRouter();
  
  }
  
  class _MainRouter extends State<MainRouter>{
    
    int currentTapIndex = 0;

    onTapped(int index){
      setState(() {
        currentTapIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar:  CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text("Calendar")),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          title: Text("Detail")),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.add),
          title: Text("Add")),
      ]),
      tabBuilder: (context, index){
        switch(index){
          case 0:
            return Calendar();
            break;
          case 1:
            return DetailView();
            break;
          case 2:
            return AddItem();
            break;
          default:
            return Calendar();
            break;
        }
        return Floating();
      },
    );
  }

    
}

class Floating extends StatelessWidget {
  const Floating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){}, 
        label: null,
        icon: Icon(CupertinoIcons.add),
        )
    );
  }
}

