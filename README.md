# Easy Search Bar

<a href="https://www.buymeacoffee.com/4inka" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-violet.png" alt="Buy Me A Pizza" style="height: 60px !important;width: 217px !important;" ></a>


A Flutter plugin to help you with color selection.<br/>
A lightweight and flexible package that can be used inside any page or dialog

## Preview
![Preview](https://raw.githubusercontent.com/4inka/flutter_easy_color_picker/main/preview/preview.gif)

## Usage

In the `pubspec.yaml` of your flutter project, add the following dependency:

``` yaml
dependencies:
  ...
  easy_color_picker: ^1.0.0
```

You can create a simple searchbar widget with the following example:

``` dart
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
```

## API
| Attribute | Type | Required | Description | Default value |
|:---|:---|:---:|:---|:---|
| selected | `Color` | :heavy_check_mark: | The current selected color from color picker |  |
| onChanged | `Function(Color)` | :heavy_check_mark: | Function that returns the current selected color clicked by user |  |
| colorSelectorSize | `double` | :x: | The size for each color selector option | 30 |
| colorSelectorBorderRadius | `double` | :x: | Border radius for each color selector | 5 |
| optionsMargin | `double` | :x: | Margin to applied between options | 2 |
| selectedIcon | `IconData` | :x: | Icon to be displayed on top of current select color option | Icons.check_rounded |
| selectedIconSize | `double` | :x: | Icon size for current selected color option | 20 |
| selectedIconColor | `Color` | :x: | Icon color for current selected color option | Colors.white |
| colors | `List<Color>` | :x: | List of color to be displayed for selection | [Colors.deepPurple, Colors.deepPurpleAccent, Colors.purple, Colors.purpleAccent, Colors.pinkAccent, Colors.pink, Colors.red, Colors.redAccent, Colors.deepOrange, Colors.deepOrangeAccent, Colors.orange, Colors.orangeAccent, Colors.amber, Colors.amberAccent, Colors.yellow, Colors.yellowAccent, Colors.green, Colors.lightGreen, Colors.lime, Colors.lightGreenAccent, Colors.greenAccent, Colors.lightBlueAccent, Colors.cyan, Colors.lightBlue, Colors.blue] |

## Issues & Suggestions
If you encounter any issue you or want to leave a suggestion you can do it by filling an [issue](https://github.com/4inka/flutter_easy_color_picker/issues).

## Other packages
* [Quantity Input](https://pub.dev/packages/quantity_input)
* [Easy Search Bar](https://pub.dev/packages/easy_search_bar)

### Thank you for the support!
