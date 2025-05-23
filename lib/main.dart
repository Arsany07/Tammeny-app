import 'package:firstflutter/navigation_btns.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xapp());
}

class Xapp extends StatelessWidget {
  const Xapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBtn(),
    );
  }
}
