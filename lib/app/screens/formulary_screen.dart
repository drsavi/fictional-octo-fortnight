import 'package:flutter/material.dart';

import '../components/menu_component.dart';

class FormularyScreen extends StatefulWidget {
  const FormularyScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FormularyScreen> createState() => _MyFormularyScreenState();
}

class _MyFormularyScreenState extends State<FormularyScreen> {

  String _text = '';
  List _listNames = [];
  final _inputController = TextEditingController();

  void _cleanList(){
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
        title: Text("Formulário"),
      ),

      drawer:
      MenuComponent(context),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              textAlign: TextAlign.start,
              controller: _inputController,
              style: TextStyle(
                fontSize: 16,
              ),
              onSubmitted: (text) {
                _setString();
              },
            ),

            Expanded(
              child: new ListView.builder(
                  itemCount: _listNames.length,
                  itemBuilder: (context, index) {
                    return new Text(_listNames[index]);
                  }
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: () {
                    _setString();
                  },
                  child: Icon(Icons.add, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    primary: Colors.blue, // <-- Button color
                    onPrimary: Colors.red, // <-- Splash color
                  ),
                ),

                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: ( ) {
                    _cleanList();
                  },
                  child: Text('LIMPAR'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}