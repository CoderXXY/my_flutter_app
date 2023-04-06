import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:my_flutter_app/homeModule/HomeLeftDrawer.dart';
import 'package:my_flutter_app/homeModule/HomeModule.dart';
import 'package:my_flutter_app/detailModule/DetailModule.dart';
import 'package:my_flutter_app/exploreModule/ExploreModule.dart';
import 'package:my_flutter_app/mineModule/MineModule.dart';
import 'package:my_flutter_app/homeModule/HomeLeftDrawer.dart';


class FlutterTabbarWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FlutterTabbarWidgetState();
  }
}

class FlutterTabbarWidgetState extends State<FlutterTabbarWidget>{
  // tabbar idx 下标
  int _currentIdx = 0;
  // 页面容器
  List<Widget> list = [];
  final List<String> _itemTitles = [];//['HomeModule', 'HomeDetailModule', 'ExploreModule', 'MineModule'];

  String _currentItemTitle (int idx){
    String title = _itemTitles[idx];
    if (kDebugMode) {
      print('_currentItemTitle:$title');
    }
    return title;
  }
  //
  void _clickTabbarAction(int idx){
    setState((){
      _currentIdx = idx;
    });
  }
  // tabbars
  final List<BottomNavigationBarItem> _tabbarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: 'List',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.details),
      label: 'Detail',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.explore),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Mine',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 初始化控制器
    list
      ..add(HomeModule())
      ..add(HomeDetailModule())
      ..add(ExploreModule())
      ..add(MineModule());
    // 初始化导航栏标题
    _itemTitles
      ..add(HomeModule().toString())
      ..add(HomeDetailModule().toString())
      ..add(ExploreModule().toString())
      ..add(MineModule().toString());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _currentItemTitle(_currentIdx),
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontSize:18.0,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: list[_currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdx,
        onTap: _clickTabbarAction,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.indigo,
        // 当item个数超过四个时，背景色为白色，类型也会改变，使用上面的属性
        items: _tabbarItems,
        // items: const [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.list),
        //     label: 'List',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.details),
        //     label: 'Detail',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.explore),
        //     label: 'Explore',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.person),
        //     label: 'Mine',
        //   ),
        // ],
      ),
      drawer: HomeLeftDrawer(),
    );
  }
}