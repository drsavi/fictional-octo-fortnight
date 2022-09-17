import 'package:flutter/material.dart';

import '../components/menu_component.dart';

class GaleryScreen extends StatefulWidget {
  const GaleryScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GaleryScreen> createState() => _MyGaleryScreenState();
}

class _MyGaleryScreenState extends State<GaleryScreen> {
  String _text = '';
  List _listNames = [];
  final _inputController = TextEditingController();

  void _cleanList() {
    setState(() {
      _listNames.clear();
    });
  }

  void _setString() {
    setState(() {
      _text = _inputController.text;
      _listNames.add(_text);
      _inputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galery"),
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
                  //child: Image.network("https://sonhoastral.com/uploads/content/image/210280/Gato_preto_1_.jpg"),
                  child: Image.asset("assets/images/capi.jpg"),
                ),
                Container(
                  width: 300.0,
                  height: 300.0,
                  //child: Image.network("https://sonhoastral.com/uploads/content/image/210280/Gato_preto_1_.jpg"),
                  child: Image.asset("assets/images/capi.jpg"),
                )
              ],
            ),

            // Card(
            //   child: Container(
            //     child: Image.network("https://t1.ea.ltmcdn.com/pt/posts/1/7/4/carateristicas_dos_gatos_pretos_21471_600.jpg"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
