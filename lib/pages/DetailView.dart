
import 'package:flutter/cupertino.dart';

class DetailView extends StatelessWidget{

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      
      child: Center(
        child: Text("Hello"),  
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}