

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/display_component.dart';
import '../components/keyboard_component.dart';
import '../components/menu_component.dart';
import '../materials/memory.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key, required this.title}) : super(key: key);

  final String title;
  //const Calculator({Key? key}) : super(key: key);



  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.refresh),
        //     onPressed: _clean,
        //   )
        // ],
      ),
      drawer:
      MenuComponent(context),

      body: Column(
        children: <Widget>[
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );

  }
}
