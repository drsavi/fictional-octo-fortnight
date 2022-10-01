import 'package:flutter/material.dart';
import 'package:primeiro_app/app/screens/formulary_screen.dart';
import 'package:primeiro_app/app/screens/home_screen.dart';
import '../screens/galery_screen.dart';
import '../screens/list_calculator_screen.dart';
import '../screens/regular_calculator_screen.dart';

Widget MenuComponent(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('MENU'),
        ),
        ListTile(
          title: const Text('HOME'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen(title: 'HOME')));
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: const Text('FORMULARIO'),
          leading: Icon(Icons.accessible_forward_outlined),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FormularyScreen(title: 'FORMULARIO')));
          },
        ),
        ListTile(
          title: const Text('GALERY'),
          leading: Icon(Icons.add_a_photo_outlined),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GaleryScreen(title: 'GALERY')));
          },
        ),
        ListTile(
          title: const Text('CALCULADORA LISTA'),
          leading: Icon(Icons.ad_units),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListCalculatorScreen(title: 'CALCULADORA')));
          },
        ),
        ListTile(
          title: const Text('CALCULADORA NORMAL'),
          leading: Icon(Icons.ad_units_outlined),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegularCalculatorScreen(title: 'CALCULADORA')));
          },
        ),
      ],
    ),
  );
}
