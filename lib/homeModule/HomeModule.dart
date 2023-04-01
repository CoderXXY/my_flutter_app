import 'package:flutter/material.dart';
import 'HomeModel.dart';

class HomeModule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget _listItemBuilder(BuildContext context, int idx){
      return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.network(dataSource[idx].imgUrl),
            SizedBox(height: 30),
            Text(
              dataSource[idx].title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(width: 100)
          ],
        ),
      );
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize:18.0,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body:Center(
        child: ListView.builder(
            itemCount: dataSource.length,
          itemBuilder: _listItemBuilder,
        )
      ),
    );
  }
}