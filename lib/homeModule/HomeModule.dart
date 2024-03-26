
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'HomeModel.dart';
import 'HomeListView.dart';

class HomeModule extends StatelessWidget{
  const HomeModule({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const Widget icon = Icon(
        Icons.add_circle_outline_rounded
    );
    // private
     final beveledRectangleBorder = BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
    );
     // shape
    const BoxShape boxShape = BoxShape.circle;
  //
    final Widget floatingActionButton = FloatingActionButton(
      onPressed: (){
        if (kDebugMode) {
          print('漂浮按钮点击事件');
        }
      },
      elevation: 0.0,
      backgroundColor: Colors.greenAccent,
      shape: beveledRectangleBorder,
      child: icon,
    );
    const Widget btnLabel = Text(
        "alarm_rounded",
      style: TextStyle(
        color: Colors.yellow,
        fontWeight: FontWeight.w100,
      ),
    );
    final Widget floatingActionBtnExtend = FloatingActionButton.extended(
        onPressed: (){},
        icon: icon,
        label: btnLabel
    );
    final Widget floatingActionBtnExtend1 = FloatingActionButton(
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
        if (kDebugMode) {
          print("FloatingButton onClicked");
        }
      },
    );
    return Scaffold(body: const Center(
      child: HomeListView(),
    ),
          floatingActionButton: floatingActionButton,
          // 这个组件会直接添加 drawer图标，点击图标也会触发抽屉
          // drawer: HomeLeftDrawer(),
          // bottomNavigationBar: HomeTabbarWidget(),
        );
    // );
  }
}
