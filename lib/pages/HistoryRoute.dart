import 'package:flutter/cupertino.dart';

class HistorytRoute extends StatelessWidget{

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: Center(
        child: Text("History"),  
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}