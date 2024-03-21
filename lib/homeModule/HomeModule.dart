import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/baseModule/FlutterBaseControllerWidget.dart';
// import 'HomeModel.dart';
import 'HomeListView.dart';
import 'HomeLeftDrawer.dart';
import 'HomeBottomNavigationBarItem.dart';
import 'package:my_flutter_app/detailModule/DetailModule.dart';
import 'package:my_flutter_app/baseModule/FlutterAppBar.dart';
import 'package:dio/dio.dart';

class HomeModule extends StatelessWidget{
  const HomeModule({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    fetchHttp();
    final Widget _icon = Icon(
        Icons.add_circle_outline_rounded
    );
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: (){
        print('漂浮按钮点击事件');
      },
      elevation: 0.0,
      child: _icon,
      backgroundColor: Colors.greenAccent,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
    );
    final Widget _btnLabel = Text(
        "alarm_rounded",
      style: TextStyle(
        color: Colors.yellow,
        fontWeight: FontWeight.w100,
      ),
    );
    final Widget _floatingActionBtnExtend = FloatingActionButton.extended(
        onPressed: (){},
        icon: _icon,
        label: _btnLabel
    );
    final Widget _floatingActionBtnExtend1 = FloatingActionButton(
      backgroundColor: Colors.purpleAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: const BorderSide(
          width: 2,
          color: Colors.black87,
        ),
      ),
      //     //可以是文字或者icon，它会显示在FloatingButton上，默认是蓝色圆形
      // child: const Text("Float Button"),
      child: const Icon(Icons.add),
      onPressed: () {
        print("FloatingButton onClicked");
      },
    );
    return
      // DefaultTabController(
      //   length: 4,
      //   child: Scaffold(
      Scaffold(
          // appBar: AppBar(
          //   centerTitle: true,
          //   // 添加导航栏 menu图标，会触发系统侧滑，抽屉，但是点击图标无效果。
          //   // leading: IconButton(
          //   //     onPressed: ()=> debugPrint('Navigation button is pressed'),
          //   //     icon: Icon(
          //   //       Icons.menu,
          //   //       color: Colors.white,
          //   //     )
          //   // ),
          //   title: const Text(
          //     'Home',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize:18.0,
          //         fontWeight: FontWeight.bold
          //     ),
          //   ),
          //   actions: <Widget>[
          //     IconButton(
          //         onPressed: ()=>debugPrint('Navigation button search_icon is pressed'),
          //         icon: Icon(Icons.search)
          //     )
          //   ],
          //   backgroundColor: Colors.indigo,
          // ),
          // body:TabBarView(
          //     children: <Widget>[
          //       HomeListView(),
          //       // Icon(Icons.list, size: 40, color: Colors.black12,),
          //       HomeDetailModule(),
          //       Icon(Icons.explore, size: 40, color: Colors.black12,),
          //       Icon(Icons.person, size: 40, color: Colors.black12,),
          //     ]
          // ),
          body: Center(
            child: HomeListView(),
          ),
          floatingActionButton: _floatingActionButton,
          // 这个组件会直接添加 drawer图标，点击图标也会触发抽屉
          // drawer: HomeLeftDrawer(),
          // bottomNavigationBar: HomeTabbarWidget(),
        );
    // );
  }
// dio getReq
  void fetchHttp() async{
    try{
      Response response;
      const String urlStr = 'http://www.weather.com.cn/data/sk/101010100.html';
      response = await Dio().get(urlStr);
      return print(response);
    }catch(err){
      return print(err);
    }
  }
}
