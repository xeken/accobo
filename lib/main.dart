import 'package:accobo/pages/MainRouter.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        barBackgroundColor: CupertinoColors.extraLightBackgroundGray,
        primaryColor: CupertinoColors.activeBlue
        ),
      home: MainRouter(
        title: "MainRouter",
      ),
      
    );
  }
}