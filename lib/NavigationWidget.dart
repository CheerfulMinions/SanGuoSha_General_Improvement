import 'package:example1/page/add.dart';
import 'package:flutter/material.dart';
import 'page/General.dart';
import 'page/Learning.dart';

class NavigationWidget extends StatefulWidget {
  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _currentIndex = 0;
  List<Widget> list = [];
  @override
  void initState() {
    super.initState();
    list..add(General())..add(AddPage())..add(Learning());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          // 数组里面有很多Widget
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: '武将列表',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '新增改动',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: '技巧',
              backgroundColor: Colors.green,
            ),
          ],
          selectedLabelStyle: TextStyle(fontSize: 20),
          // selectedItemColor: Colors.amber[800],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // 四个以下默认fixed , 即无法改变BottomNavigationBar的样式
          type: BottomNavigationBarType.shifting),
    );
  }
}
