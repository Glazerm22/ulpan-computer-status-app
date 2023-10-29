import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Popup Menu with Computer Icon'),
        ),
        body: Center(
          child: DynamicPopupMenuButton(),
        ),
      ),
    );
  }
}

class DynamicPopupMenuButton extends StatefulWidget {
  @override
  _DynamicPopupMenuButtonState createState() => _DynamicPopupMenuButtonState();
}

class _DynamicPopupMenuButtonState extends State<DynamicPopupMenuButton> {
  final List<String> options = ['Custom: Name', 'Maintenance', 'Rendering', 'Available'];
  Color? _iconColor1 = Colors.black; // Default color for the first button
  Color? _iconColor2 = Colors.black; // Default color for the second button

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              setState(() {
                _iconColor1 = _getColorFromOption(result);
              });
            },
            itemBuilder: (BuildContext context) {
              return options.map((String option) {
                return PopupMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList();
            },
            child: IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.computer, color: _iconColor1),
              onPressed: null, // The popup menu will be shown when the button is tapped
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (String result) {
              setState(() {
                _iconColor2 = _getColorFromOption(result);
              });
            },
            itemBuilder: (BuildContext context) {
              return options.map((String option) {
                return PopupMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList();
            },
            child: IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.computer, color: _iconColor2),
              onPressed: null, // The popup menu will be shown when the button is tapped
            ),
          ),
        ],
      ),
    );
  }

  Color? _getColorFromOption(String option) {
    switch (option) {
      case 'Custom: Name':
        return Colors.blue;
      case 'Maintenance':
        return Colors.red;
      case 'Rendering':
        return Colors.orange;
      case 'Available':
        return Colors.green;
      default:
        return Colors.black;
    }
  }
}
