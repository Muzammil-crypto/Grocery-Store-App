import 'package:flutter/material.dart';
import 'package:store_app/Widgets/InventoryList.dart';
import 'package:store_app/Widgets/my_drawer.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: !isSearching
              ? Text("Products")
              : TextField(
                  decoration: InputDecoration(
                      hintText: "Search products", icon: Icon(Icons.search)),
                ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {
                setState(() {
                  this.isSearching = !this.isSearching;
                }),
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: InventoryList(),
        ),
      ),
    );
  }
}
