import 'package:accobo/models/AccoboItem.dart';
import 'package:flutter/cupertino.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            CupertinoTextField(
              autofocus: true,
              placeholder: "제목",
              padding: const EdgeInsets.only(bottom: 8),
              //onSubmitted: accoboItem.,
            ),
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
