import 'package:flutter/material.dart';
import 'package:my_flutter_app/homeModule/HomeLeftDrawer.dart';

class ExploreModule extends StatelessWidget{
  const ExploreModule({super.key});
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Explore Module',
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
        child: Text('explore page'),
      ),
      // drawer: HomeLeftDrawer(),
    );
  }
}