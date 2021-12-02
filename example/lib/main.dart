import 'package:easy_color_picker/easy_color_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Example());
}

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Color _selectedColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example'),
          backgroundColor: _selectedColor,
        ),
        body: Center(
          child: EasyColorPicker(
            selected: _selectedColor,
            onChanged: (color) => setState(() => _selectedColor = color)
          )
        )
      )
    );
  }
}
