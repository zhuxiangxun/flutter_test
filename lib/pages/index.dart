import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/map.dart';
import 'package:flutter_app/pages/login.dart';

class Index extends StatefulWidget{
  @override
  _IndexState createState()=>_IndexState();
}
class _IndexState extends State<Index>{
  //页面
  final pages = [Home(), Map(), Login(),];

  //底部导航数组
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.map),
      title: Text("地图"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      title: Text("我的"),
    ),
  ];

  //当前状态
  int currentIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(  //头部
        title: Text("才赋云"),
        centerTitle: true,
      ),
      body: pages[currentIndex],  //内容
      bottomNavigationBar: BottomNavigationBar(  //底部
        backgroundColor: Colors.white,
        items: bottomNavItems,
        currentIndex: currentIndex,
        fixedColor: Colors.blue,
        onTap: (index) {
          _changePage(index);
        },
      ),
    );
  }

  //点击底部菜单触发
  void _changePage(int index) {
    setState(() {
      if (index != currentIndex) {
        setState(() {
          currentIndex = index;
        });
      }
    });
  }
}