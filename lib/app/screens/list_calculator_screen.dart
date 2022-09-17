import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menu_component.dart';

class ListCalculatorScreen extends StatefulWidget {
  const ListCalculatorScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ListCalculatorScreen> createState() => _MyListCalculatorScreenState();
}

class _MyListCalculatorScreenState extends State<ListCalculatorScreen> {

  double _result = 0;
  double firstInput = 0;
  double secondInput = 0;
  List<dynamic> _resultList = [];
  final _firstInputController = TextEditingController();
  final _secondInputControlller = TextEditingController();


  void _sumButton() {
    setState(() {
      firstInput = double.parse(_firstInputController.text);
      secondInput = double.parse(_secondInputControlller.text);

      _result = firstInput + secondInput;

      _resultList.add(_result.toStringAsFixed(2));
    });
  }

  void _decreaseButton() {
    setState(() {
      firstInput = double.parse(_firstInputController.text);
      secondInput = double.parse(_secondInputControlller.text);

      _result = firstInput - secondInput;

      _resultList.add(_result.toStringAsFixed(2));
      _result;
    });
  }
  void _multiplyButton() {
    setState(() {
      firstInput = double.parse(_firstInputController.text);
      secondInput = double.parse(_secondInputControlller.text);

      _result = firstInput * secondInput;

      _resultList.add(_result.toStringAsFixed(2));
      _result;
    });
  }
  void _divideButton() {
    setState(() {
      firstInput = double.parse(_firstInputController.text);
      secondInput = double.parse(_secondInputControlller.text);

      _result = firstInput / secondInput;

      _resultList.add(_result.toStringAsFixed(2));
      _result;
    });
  }

  void _clear() {
    setState(() {
      _firstInputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer:
      MenuComponent(context),

      body: Column(
        children: <Widget>[
          TextField(
            textAlign: TextAlign.center,
            controller: _firstInputController,
            style: TextStyle(
              fontSize: 16,
            ),
          ),

          TextField(
            textAlign: TextAlign.center,
            controller: _secondInputControlller,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: ( ) {
                  _sumButton();
                },
                child:  Text('+'),
              ),

              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: ( ) {
                  _decreaseButton();
                },
                child:  Text('-'),
              ),

              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: ( ) {
                  _multiplyButton();
                },
                child: Text('*'),
              ),

              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: ( ) {
                  _divideButton();
                },
                child: Text('/'),
              ),

            ],
          ),

          Text(
            '$_result',
            style: Theme.of(context).textTheme.headline6,
          ),

          Expanded(
            child: ListView.builder(
                itemCount: _resultList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_resultList[index].toString()),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _resultList.remove(_resultList[index]);
                        });
                      },
                    ),
                  );
                }
            ),
          ),


        ],
      ),
    );
  }
}