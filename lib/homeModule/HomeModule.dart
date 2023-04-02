import 'package:flutter/material.dart';
// import 'HomeModel.dart';
import 'HomeListView.dart';

class HomeModule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Widget _listItemBuilder(BuildContext context, int idx){
    //   return Container(
    //     color: Colors.white,
    //     margin: EdgeInsets.all(8.0),
    //     child: Column(
    //       children: <Widget>[
    //         Image.network(dataSource[idx].imgUrl),
    //         SizedBox(height: 30),
    //         Text(
    //           dataSource[idx].title,
    //           style: Theme.of(context).textTheme.titleMedium,
    //         ),
    //         SizedBox(width: 100)
    //       ],
    //     ),
    //   );
    // }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: ()=> debugPrint('Navigation button is pressed'),
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )
        ),
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
      body:Center(
        child: HomeListView(),
      ),
      drawer: Container(
        width: 180,
        color: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Text(
                    'header'.toUpperCase(),
                  textAlign: TextAlign.center,
                ),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
            ),
            ListTile(
              title: Text('message', textAlign: TextAlign.right,),
              trailing: Icon(Icons.message, color: Colors.black12,),
            ),
            ListTile(
              title: Text('favorite', textAlign: TextAlign.right,),
              trailing: Icon(Icons.favorite, color: Colors.black12,),
            ),
            ListTile(
              title: Text('share', textAlign: TextAlign.right,),
              trailing: Icon(Icons.share, color: Colors.black12,),
            ),
          ],
        ),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text('this is drawer')
        //   ],
        // ),
      ),
    );
  }
} 