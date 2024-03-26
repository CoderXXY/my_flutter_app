import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeDetailModule extends StatelessWidget{
  const HomeDetailModule({super.key});
  final String _author = 'coderXY';
  final String _title = 'iOS developer';

  @override
  Widget build(BuildContext context){
    const TextStyle textStyle = TextStyle(
      color: Colors.indigo,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      shadows: [Shadow(
        offset: Offset(3, 5),
        blurRadius: 0.8,
        color: Colors.grey
      )]
    );
    const String contentStr = 'Flutter组件采用现代响应式框架构建，这是从React中获得的灵感，中心思想是用组件(widget)构建你的UI。 组件描述了在给定其当前配置和状态时他们显示的样子。当组件状态改变，组件会重构它的描述(description)，Flutter 会对比之前的描述， 以确定底层渲染树从当前状态转换到下一个状态所需要的最小更改。';
    Container container = Container(
      color: Colors.red,
      margin: const EdgeInsets.all(0.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            contentStr,
            textDirection: TextDirection.ltr,
            style: textStyle,
          ),
          Text(
            contentStr,
            textDirection: TextDirection.ltr,
            style: textStyle,
          ),
          Text(
            contentStr,
            textDirection: TextDirection.ltr,
            style: textStyle,
          ),
        ],
      ),
    );
    return container;
    // return const Scaffold(
    //   body: Center(
    //     child: Text(
    //         'Flutter组件采用现代响应式框架构建，这是从React中获得的灵感，中心思想是用组件(widget)构建你的UI。 组件描述了在给定其当前配置和状态时他们显示的样子。当组件状态改变，组件会重构它的描述(description)，Flutter 会对比之前的描述， 以确定底层渲染树从当前状态转换到下一个状态所需要的最小更改。',
    //       textAlign: TextAlign.center,
    //       style: textStyle,
    //       maxLines: 10,
    //       overflow: TextOverflow.ellipsis, // 表示省略
    //     ),
    //   ),
    //   // drawer: HomeLeftDrawer(),
    // );
  }
}