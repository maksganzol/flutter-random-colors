import 'dart:math';

import 'package:flutter/cupertino.dart';

class RandomBGColor extends StatefulWidget {
  RandomBGColor({Key? key}) : super(key: key);

  @override
  _RandomBGColorState createState() => _RandomBGColorState();
}

Color randomColor() => Color(Random().nextInt(0xffffffff));

class _RandomBGColorState extends State<RandomBGColor> {
  Color _currentColor = randomColor();

  void _changeColor() {
    setState(() {
      _currentColor = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_currentColor);

    return GestureDetector(
      onTap: _changeColor,
      child: CupertinoPageScaffold(
        backgroundColor: _currentColor,
        child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              color: Color(0xffffffff - _currentColor.value),
            ),
          ),
        ),
      ),
    );
  }
}
