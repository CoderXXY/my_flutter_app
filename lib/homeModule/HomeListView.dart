import 'package:flutter/material.dart';
import 'HomeModel.dart';

class HomeListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // listView cell
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
    return ListView.builder(
        itemCount: dataSource.length,
        itemBuilder: _listItemBuilder,
    );
  }
}