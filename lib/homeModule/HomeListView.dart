
import 'package:flutter/material.dart';
import 'HomeModel.dart';

class HomeListView extends StatelessWidget{
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    // listView cell
    Widget listItemBuilder(BuildContext context, int idx){
      return Container(
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.network(dataSource[idx].imgUrl),
            const SizedBox(height: 5),
            Text(
              dataSource[idx].title,
                // style: Theme.of(context).textTheme.titleMedium
              style: const TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w300,
                fontSize: 15.0,
                shadows: [
                  Shadow(
                      color: Colors.black12,
                      offset: Offset(1.5, 3),
                      blurRadius: 0.3
                  ),
                ]
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 100)
          ],
        ),
      );
    }
    return ListView.builder(
        itemCount: dataSource.length,
        itemBuilder: listItemBuilder,
    );
  }
}