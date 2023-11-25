import 'package:flutter/material.dart';
import '../screens/Home.dart';
import '../screens/Create.dart';
import '../screens/Lista.dart';

Widget Menu(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Parking Spot"),
          accountEmail: Text("parkingspot@example.com"),
          currentAccountPicture: Image.network(
            "https://www.zkteco.com.br/wp-content/uploads/2020/04/estacionamento-leitorUHF.png",
          ),
        ),
        Divider(), // Add a divider between header and list items
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          ),
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("List"),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListaPage()),
          ),
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text("New"),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Create()),
          ),
        ),
      ],
    ),
  );
}
