import 'package:detectable_list_view/visibility_detectable_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('List View')),
        body: VisibilityDetectableListView(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.extension), label: 'item'),
            BottomNavigationBarItem(icon: Icon(Icons.extension), label: 'item'),
            BottomNavigationBarItem(icon: Icon(Icons.extension), label: 'item'),
            BottomNavigationBarItem(icon: Icon(Icons.extension), label: 'item'),
            BottomNavigationBarItem(icon: Icon(Icons.extension), label: 'item'),
          ],
          currentIndex: 0,
        ),
      ),
    );
  }
}
