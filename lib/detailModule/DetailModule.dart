import 'package:flutter/material.dart';
import 'package:my_flutter_app/homeModule/HomeLeftDrawer.dart';

class HomeDetailModule extends StatelessWidget{
  const HomeDetailModule({super.key});
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
        child: Text('detail page'),
      ),
      // drawer: HomeLeftDrawer(),
    );
  }
}