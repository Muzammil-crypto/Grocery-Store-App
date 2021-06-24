import 'package:flutter/material.dart';
import 'package:store_app/drawer.dart';

import 'homepage.dart';
class Inventory extends StatefulWidget {

  const Inventory({Key? key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  bool isSearching = false ;

  @override
  void initState() {
    // ignore: unnecessary_statements
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(

        backgroundColor: Colors.green,
        drawer: Drawer(

          child: Container(

            child: ListView(

              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color:
                  Colors.green),
                    accountName: Text('Mr. Mehmood '),
                    accountEmail: Text('MehmoodKhan90@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://image.flaticon.com/icons/png/512/3135/3135768.png"),
                    )),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Contact'),
                  subtitle: Text('Personal'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.new_label),
                  title: Text('Products'),
                  subtitle: Text('Newest'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.details),
                  title: Text('Account Details'),
                  subtitle: Text('Personal'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('About Seller'),
                  subtitle: Text('Verified'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_city_outlined),
                  title: Text('Organization'),
                  subtitle: Text('Personal'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(backgroundColor: Colors.green,
        title: !isSearching ? Text("Products"): TextField(decoration: InputDecoration(hintText: "Search products",icon: Icon(Icons.search)),),
        actions: [
          IconButton(icon: Icon(Icons.search),onPressed: ()=>{setState((){
            this.isSearching = !this.isSearching;
          }),
    },),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(right: 330.0),
                child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: ()=>{Navigator.push(context, new MaterialPageRoute(builder: (context)=>HomePage()))

    }),
              ),

              Padding(
                padding: const EdgeInsets.only (left: 10,right: 10,top: 30,bottom: 20),
                child: Container(

                  width: 372,
                  height: 243,
                  color: Colors.white,
                  child: Image.asset("assets/sofa.jpg",colorBlendMode: BlendMode.darken,),

                ),

              ),
              Text("Elegant Simple Office sofa by Furniture Design ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
              Padding(
                padding: const EdgeInsets.all( 5.0),

                    child: Container(
                      color: Colors.transparent,
                      height: 350,
                      width: 600,
                      child: Column(
                        children: [
                         Expanded(
                           child: ListView(children: [
                             Column(

                               children: [
                                 ClipOval(

                                   child: Image.network(
                                     "https://images.pexels.com/photos/6580232/pexels-photo-6580232.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                                     height: 250,
                                     width: 370,
                                     fit: BoxFit.fill,
                                   ),
                                 ),

                                 Padding(
                                   padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 20,top: 20),
                                   child: Text("Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                                   style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                 ),
                                 ClipOval(

                                   child: Image.network(
                                     "https://images.pexels.com/photos/245208/pexels-photo-245208.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                                     height: 250,
                                     width: 370,
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 20,top: 20),
                                   child: Text("Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                 ),                               ClipOval(

                                   child: Image.network(
                                     "https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                     height: 250,
                                     width: 370,
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 20,top: 20),
                                   child: Text("Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                 ),
                                 ClipOval(

                                   child: Image.network(
                                     "https://images.pexels.com/photos/5411784/pexels-photo-5411784.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                                     height: 250,
                                     width: 370,
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 40.0,right: 40,bottom: 20,top: 20),
                                   child: Text("Details: Elegant Simple Office Furniture Modern Sofa Set Living Room Fabric Sofa.",
                                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                 ),
                               ],

                             ),

                           ],),
                         )
                        ],
                      ),
                    ),
                  ),

            ],
          ),
        ),



      ),

    );
  }
}
