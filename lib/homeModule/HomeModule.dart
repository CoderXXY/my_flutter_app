import 'package:flutter/material.dart';
// import 'HomeModel.dart';
import 'HomeListView.dart';
import 'HomeLeftDrawer.dart';
import 'HomeBottomNavigationBarItem.dart';

class HomeModule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // 添加导航栏 menu图标，会触发系统侧滑，抽屉，但是点击图标无效果。
            // leading: IconButton(
            //     onPressed: ()=> debugPrint('Navigation button is pressed'),
            //     icon: Icon(
            //       Icons.menu,
            //       color: Colors.white,
            //     )
            // ),
            title: const Text(
              'Home',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize:18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: ()=>debugPrint('Navigation button search_icon is pressed'),
                  icon: Icon(Icons.search)
              )
            ],
            backgroundColor: Colors.indigo,
          ),
          body:TabBarView(
              children: <Widget>[
                HomeListView(),
                Icon(Icons.list, size: 40, color: Colors.black12,),
                Icon(Icons.explore, size: 40, color: Colors.black12,),
                Icon(Icons.person, size: 40, color: Colors.black12,),
              ]
          ),
          // Center(
          //   child: HomeListView(),
          // ),
          // 这个组件会直接添加 drawer图标，点击图标也会触发抽屉
          drawer: HomeLeftDrawer(),
          bottomNavigationBar: HomeTabbarWidget(),
        ),
    );
  }
} 