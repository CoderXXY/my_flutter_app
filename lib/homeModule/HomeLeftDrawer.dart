import 'package:flutter/material.dart';

class HomeLeftDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     'UserAccountInfo'.toUpperCase(),
          //     textAlign: TextAlign.center,
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            // 通常设置背景色或者背景图
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                image: NetworkImage('https://clubimg.club.vmall.com/data/attachment/forum/201903/25/1618428drxvafuzceagv6z.jpg'),
                fit: BoxFit.cover,
                // 这个属性可以让颜色和图片结合使用，融合效果
                colorFilter: ColorFilter.mode(
                    Colors.greenAccent.withOpacity(0.6),
                    BlendMode.srcATop
                )
              )
            ),
              accountName: Text('coderXY', style: TextStyle(fontWeight: FontWeight.bold),),
              accountEmail: Text('coderxxy@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://pic3.zhimg.com/v2-97bcf39008ea0f6ad78eb7f93cd0a91e_r.jpg'),
            ),
          ),
          ListTile(
            title: Text('message', textAlign: TextAlign.left,),
            leading: Icon(Icons.message, color: Colors.black12,),
          ),
          Divider(), // 分割线
          ListTile(
            title: Text('favorite', textAlign: TextAlign.left,),
            leading: Icon(Icons.favorite, color: Colors.black12,),
          ),
          Divider(), // 分割线
          ListTile(
            title: Text('share', textAlign: TextAlign.left,),
            leading: Icon(Icons.share, color: Colors.black12,),
          ),
          Divider(), // 分割线
          ListTile(
            title: Text('close', textAlign: TextAlign.left,),
            leading: Icon(Icons.close, color: Colors.black12,),
            onTap: () => Navigator.pop(context), // 关闭抽屉
          ),
        ],
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text('this is drawer')
      //   ],
      // ),
    );
  }
}