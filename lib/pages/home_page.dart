import 'package:first/models/catalog.dart';
import 'package:first/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/items_widget.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final int num=1;

 final String name="Kshitiz Agarwal";

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    }


    loadData() async {
      final catalogJson= await rootBundle.loadString("assets/files/catalog.json");
      final decodeData=jsonDecode(catalogJson);
      var productsData=decodeData["products"];
      CatalogModel.items=List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {

      });
    }

  @override
  Widget build (BuildContext context){
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
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
