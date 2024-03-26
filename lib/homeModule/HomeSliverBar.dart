import 'package:flutter/material.dart';

class HomeSliverBar extends SliverPersistentHeaderDelegate{
  // TODO: something
  TabController tabController; //必传参数，控制器
  List tab; //必传参数，导航项列表
  double maxHeight; //导航栏最大高度
  double minHeight; //导航栏最小高度
  bool isScrollable; //是否可以滚动，默认false
  Function(int)? onTap; //点击导航项事件
  BorderRadiusGeometry? borderRadius; //导航栏圆角
  Color? bgColor; //背景颜色
  Color? tabColor; //导航栏颜色
  HomeSliverBar({
    required this.tabController,
    required this.tab,
    this.maxHeight = 44,
    this.minHeight = 44,
    this.isScrollable = false,
    this.onTap,
    this.borderRadius,
    this.bgColor,
    this.tabColor,
  });
  final Color _whiteColor = const Color(0xffffffff);
  final TextStyle textStyle = const TextStyle(
      color: Color(0xFFFF6720),
      fontSize: 14
  );
  final TextStyle unselectedStyle = const TextStyle(
      color: Color(0xFF76777B),
      fontSize: 14
  );
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    final Container container = Container(
      color: tabColor??_whiteColor,
      child: Container(
        height: maxHeight,
        decoration: BoxDecoration(
          color: bgColor??_whiteColor,
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
        child: TabBar(
          tabs: tab.map((e) => Tab(child: Text(e))).toList(),
          isScrollable: isScrollable,
          onTap: onTap,
          labelStyle: textStyle,
          labelColor: const Color(0xFFFF6720),
          indicatorColor: const Color(0xFFFF6720),
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: const Color(0xFF76777B),
          unselectedLabelStyle: unselectedStyle,
          controller: tabController,
        ),
      ),
    );
    return container;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => throw UnimplementedError();

  @override
  // TODO: implement minExtent
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

}