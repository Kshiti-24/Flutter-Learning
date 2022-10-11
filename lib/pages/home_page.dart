import 'package:first/models/catalog.dart';
import 'package:first/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/items_widget.dart';
class HomePage extends StatelessWidget {
 final int num=1;
 final String name="Kshitiz Agarwal";
  @override
  Widget build (BuildContext context){
  final dummyList=List.generate(
      20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog App",
          style: Theme
              .of(context)
              .textTheme
              .headline6,
  ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
