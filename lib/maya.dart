import 'package:flutter/material.dart';
import 'package:ulpan_computer_status_controller/widget/buttons.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Ulpan Computer Manager'),
        centerTitle: true,
      ),
      body: Center(
        child: DynamicPopupMenuButton(),
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
  Color? _iconColor3 = Colors.black; // Default color for the third button
  Color? _iconColor4 = Colors.black; // Default color for the first button
  Color? _iconColor5 = Colors.black; // Default color for the second button
  Color? _iconColor6 = Colors.black; // Default color for the third button


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.purple[100],
              padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 31),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    color: Colors.redAccent,
                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                    child: BasicIconButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text('Computer 9'),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBar);
                      },
                    )),
                SizedBox(height: 48.0),
              ],
            ),
            SizedBox(width: 2),
            Container(
              color: Colors.pink[100],
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BasicIconButton(),
                      BasicIconButton(),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 48.0),
                      BasicIconButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 293),
            Container(
              color: Colors.greenAccent,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 48.0),
                  BasicIconButton(),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 293),
            Container(
              color: Colors.orangeAccent,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 48.0),
                  IconButton(
                    iconSize: 30.0,
                    onPressed: () {},
                    icon: Icon(Icons.computer),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 149), // Add space between the containers
            Container(
              color: Colors.lightBlue[100],
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BasicIconButton(),
                      SizedBox(width: 192.0),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BasicIconButton(),
                      SizedBox(width: 192.0),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                      BasicIconButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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










