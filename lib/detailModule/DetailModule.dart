import 'package:flutter/material.dart';
import 'package:my_flutter_app/homeModule/HomeLeftDrawer.dart';

class HomeDetailModule extends StatelessWidget{
  const HomeDetailModule({super.key});

  final TextStyle _textStyle = const TextStyle(
    fontSize: 16.0,
  );

  final String _author = 'coderXY';
  final String _title = 'iOS developer';
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Detail Module',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         color: Colors.white,
      //         fontSize:18.0,
      //         fontWeight: FontWeight.bold
      //     ),
      //   ),
      //   backgroundColor: Colors.indigo,
      // ),
      body: Center(
        child: Text(
            'Flutter组件采用现代响应式框架构建，这是从React中获得的灵感，中心思想是用组件(widget)构建你的UI。 组件描述了在给定其当前配置和状态时他们显示的样子。当组件状态改变，组件会重构它的描述(description)，Flutter 会对比之前的描述， 以确定底层渲染树从当前状态转换到下一个状态所需要的最小更改。',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0
          ),
          maxLines: 10,
          overflow: TextOverflow.ellipsis, // 表示省略
        ),
      ),
      // drawer: HomeLeftDrawer(),
    );
  }
}