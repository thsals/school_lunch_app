import 'package:flutter/material.dart';
import 'package:school/search/search_page.dart';

void main() {
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SearchPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true)
        ),
    );
  }
}
