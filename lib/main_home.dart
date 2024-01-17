import 'package:demo_discover/discover_module.dart';
import 'package:demo_mine/mine_module.dart';
import 'package:demo_news/news_module.dart';
import 'package:flutter/material.dart';
// import 'package:demo_news/news_home.dart';
// import 'package:demo_discover/discover_home.dart';
// import 'package:demo_mine/mine_home.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 3个主页
  final List<Widget> _pageList = [
    NewsHomePage(),
    DiscoverHomePage(),
    MineHomePage()
  ];

  // 4个按钮
  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "新闻",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      label: "发现",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "我的",
    )
  ];

  // 当前页面
  int _currentIndex = 0;
  PageController? _pageController;

  // 点击事件
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
      _pageController!.jumpToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // 禁止滑动
        children: _pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        items: _items,
        currentIndex: _currentIndex,
        onTap: onTap,
      ),
    );
  }
}
