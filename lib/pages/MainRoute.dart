import 'package:flutter/cupertino.dart';

class MainRoute extends StatelessWidget{

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Main"),  
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}