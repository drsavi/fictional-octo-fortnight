import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {

  int _counter = 0;
  String _text = '';
  final _inputController = TextEditingController();

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _setString() {
    setState(() {
      _text = _inputController.text;
      _inputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            TextField(
              textAlign: TextAlign.center,
              controller: _inputController,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: ( ) {
                    _decrementCounter();
                  },
                  child: Text('Diminuir'),
                ),

                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                  ),
                  onPressed: ( ) {
                    _setString();
                  },
                  child: Text('Salvar'),
                ),

                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: ( ) {
                    _incrementCounter();
                  },
                  child: Text('Aumentar'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}