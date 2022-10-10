import 'package:first/widgets/drawer.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
 final int num=1;
 final String name="Kshitiz Agarwal";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title:Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("$num. Welcome to my first App by $name"),
        ),
      ),
      drawer: MyDrawer(
      ),
    );
  }
}
