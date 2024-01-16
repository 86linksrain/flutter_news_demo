import 'package:flutter/material.dart';
import 'package:demo_common/main_router.dart';
import 'mine_router.dart';

class MineHomePage extends StatefulWidget {
  @override
  MineHomePageState createState() => MineHomePageState();
}

class MineHomePageState extends State<MineHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () =>
                  MainRouter.push(MineRouter.ROUTE_MINE_PAGE1, null),
              child: Text('点击跳转'),
            ),
          ],
        ),
      ),
    );
  }
}
