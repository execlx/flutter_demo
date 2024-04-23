import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lagou/pages/home/Home.dart';
import 'package:flutter_lagou/pages/profile/Profile.dart';
import 'package:flutter_lagou/pages/study/Study.dart';
import 'package:flutter_lagou/providers/CurrentIndexProvider.dart';
import 'package:provider/provider.dart';

class TabItem {
  final BottomNavigationBarItem appBar;
  final Widget page;

  const TabItem({
    required this.appBar,
    required this.page,
  });
}

class Index extends StatefulWidget {
  const Index({super.key});

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
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int curIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: tabList.map((item) => item.appBar).toList(),
        currentIndex: curIndex,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => {
          // 更新状态
          Provider.of<CurrentIndexProvider>(context, listen: false)
              .setCurrentIndex(index),
        },
      ),
      body: Container(
        child: tabList[curIndex].page,
      ),
    );
  }
}
