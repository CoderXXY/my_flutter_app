import 'package:flutter/material.dart';

class HomeTabbarWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTabbarState();
  }
}

class HomeTabbarState extends State<HomeTabbarWidget>{
  int currentIdx = 0;
  void clickTabbarAction(int idx){
    setState((){
      currentIdx = idx;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: currentIdx,
      onTap: clickTabbarAction,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.indigo,
      // 当item个数超过四个时，背景色为白色，类型也会改变，使用上面的属性
      items: [
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