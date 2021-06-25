import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
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
    );
  }
}
