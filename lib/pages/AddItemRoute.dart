import 'package:accobo/models/AccoboItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget{

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {

  AccoboItem accoboItem;

  @override
  void initState() {
    super.initState();
  
  }

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: Container(
        margin: const EdgeInsets.all(32),
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: <Widget>[

            CupertinoTextField(
              placeholder: "제목",
              //onSubmitted: accoboItem.,
            ),
            Padding(padding: const EdgeInsets.all(16)),
            CupertinoTextField(
              placeholder: "제목",
            ),
          ],
        ),
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
