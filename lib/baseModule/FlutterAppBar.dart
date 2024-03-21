import 'package:flutter/material.dart';

class FlutterAppBar extends AppBar {
  String appBarTitle;
  bool showEnable;
  FlutterAppBar(this.appBarTitle, this.showEnable, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      // 添加导航栏 menu图标，会触发系统侧滑，抽屉，但是点击图标无效果。
      // leading: IconButton(
      //     onPressed: ()=> debugPrint('Navigation button is pressed'),
      //     icon: Icon(
      //       Icons.menu,
      //       color: Colors.white,
      //     )
      // ),
      title: Text(
        appBarTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      actions: showEnable ? (<Widget>[
        IconButton(
            onPressed: () =>
                debugPrint('Navigation button search_icon is pressed'),
            icon: const Icon(Icons.search))
      ]):null,
      backgroundColor: Colors.indigo,
    );
  }
}
