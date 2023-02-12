import 'package:english_grammar_app/Page1.dart';
import 'package:english_grammar_app/page2.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pageList = [page1(), page2()];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pageList[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_outlined),
                label: ''
            ),
          ],
          currentIndex: selectIndex,
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          },
        ),
      ),
    );
  }
}
