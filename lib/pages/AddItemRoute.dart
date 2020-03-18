import 'package:flutter/cupertino.dart';

class AddItem extends StatefulWidget{

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      child: Center(
        //child: Text("AddItem"),  
        child: CupertinoTextField(controller: _textController),
      ),
      backgroundColor: CupertinoColors.white,
    );
  }
}
