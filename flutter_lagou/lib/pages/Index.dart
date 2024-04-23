import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lagou/pages/home/Home.dart';
import 'package:flutter_lagou/pages/profile/Profile.dart';
import 'package:flutter_lagou/pages/study/Study.dart';

class TabItem {
  final BottomNavigationBarItem appBar;
  final Widget page;

  const TabItem({
    required this.appBar,
    required this.page,
  });
}

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final List<TabItem> tabList = [
    const TabItem(
      appBar: BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: '首页',
      ),
      page: Home(),
    ),
    const TabItem(
      appBar: BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
        label: '学习',
      ),
      page: Study(),
    ),
    const TabItem(
      appBar: BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        label: '个人',
      ),
      page: Profile(),
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: tabList.map((item) => item.appBar).toList(),
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => {
          // 更新状态
          setState(() {
            currentIndex = index;
          })
        },
      ),
      body: Container(
        child: tabList[currentIndex].page,
      ),
    );
  }
}
