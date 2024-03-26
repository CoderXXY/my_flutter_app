import 'package:flutter/material.dart';

import 'package:my_flutter_app/homeModule/HomeModule.dart';
import 'package:my_flutter_app/detailModule/DetailModule.dart';
import 'package:my_flutter_app/exploreModule/ExploreModule.dart';
import 'package:my_flutter_app/mineModule/MineModule.dart';


class HomeTabbarWidget extends StatefulWidget{
  const HomeTabbarWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTabbarState();
  }
}

class HomeTabbarState extends State<HomeTabbarWidget>{
  // tabbar idx 下标
  int _currentIdx = 0;
  // 页面容器
  List<Widget> list = [];
  //
  void _clickTabbarAction(int idx){
    setState((){
      _currentIdx = idx;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list
    ..add(const HomeModule())
    ..add(const HomeDetailModule())
    ..add(const ExploreModule())
    ..add(const MineModule());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIdx,
      onTap: _clickTabbarAction,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.indigo,
      // 当item个数超过四个时，背景色为白色，类型也会改变，使用上面的属性
      items: const [
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
      ],
    );
  }

}