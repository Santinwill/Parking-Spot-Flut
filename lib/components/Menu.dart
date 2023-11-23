import 'package:parkingspot/screens/Home.dart';
import 'package:flutter/material.dart';

import '../screens/Create.dart';
import '../screens/Lista.dart';
// Pages: Home, Edit, Details, Create

// Create a menu header with profile infos

Widget Menu(BuildContext context) {
  return Drawer(
      child: ListView(children: <Widget>[
    UserAccountsDrawerHeader(
      accountName: Text("Parking Spot"),
      accountEmail: Text("Seu Nome"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Image.network(
          'https://cdn-icons-png.flaticon.com/512/4086/4086679.png',
        ),
      ),
    ),
    ListTile(
      title: Text("Home"),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      },
    ),
    ListTile(
      title: Text("Lista"),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListaPage()),
        );
      },
    ),
    ListTile(
      title: Text("Create"),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Create()),
        );
      },
    ),
  ]));
}
