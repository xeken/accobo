import 'package:flutter/cupertino.dart';

class DetailRoute extends StatelessWidget{

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Detail"),  
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}