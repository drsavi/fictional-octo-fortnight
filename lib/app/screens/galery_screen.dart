import 'package:flutter/material.dart';

import '../components/menu_component.dart';

class GaleryScreen extends StatefulWidget {
  const GaleryScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GaleryScreen> createState() => _MyGaleryScreenState();
}

class _MyGaleryScreenState extends State<GaleryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MenuComponent(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Container(
                  width: 300.0,
                  height: 300.0,
                  child: Image.asset("assets/images/capi.jpg"),
                ),
                Container(
                  width: 300.0,
                  height: 300.0,
                  child: Image.network("https://sonhoastral.com/uploads/content/image/210280/Gato_preto_1_.jpg")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
