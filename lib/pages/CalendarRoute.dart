import 'package:flutter/cupertino.dart';

class CalendarRoute extends StatelessWidget{

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Calendar"),  
      ),backgroundColor: CupertinoColors.white,
    );
  }
}