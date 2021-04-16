import 'package:flutter/cupertino.dart';
import 'package:flutter_random_colors/random_bg_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: RandomBGColor(),
    );
  }
}
