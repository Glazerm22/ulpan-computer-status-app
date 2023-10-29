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
  List<ComputerGroup> computerGroups = [
    generateComputerGroup('Gallery', 8),
    generateComputerGroup('Edit1', 1),
    generateComputerGroup('Micro', 3),
    generateComputerGroup('Internet', 1),
    generateComputerGroup('Edit2', 1),
    generateComputerGroup('Graphics', 7),
  ];

  ComputerGroup getGroupByName(String name){
    return computerGroups.firstWhere((element) => element.metaData.name == 'Gallery');
  }

  final List<String> options = ['Custom: Name', 'Maintenance', 'Rendering', 'Available'];
  Color? _iconColor1 = Colors.black; // Default color for the 1 button
  Color? _iconColor2 = Colors.black; // Default color for the 2 button
  Color? _iconColor3 = Colors.black; // Default color for the 3 button
  Color? _iconColor4 = Colors.black; // Default color for the 4 button
  Color? _iconColor5 = Colors.black; // Default color for the 5 button
  Color? _iconColor6 = Colors.black; // Default color for the 6 button
  Color? _iconColor7 = Colors.black; // Default color for the 7 button
  Color? _iconColor8 = Colors.black; // Default color for the 8 button
  Color? _iconColor9 = Colors.black; // Default color for the 9 button
  Color? _iconColor10 = Colors.black; // Default color for the 10 button
  Color? _iconColor11 = Colors.black; // Default color for the 11 button
  Color? _iconColor12 = Colors.black; // Default color for the 12 button
  Color? _iconColor13 = Colors.black; // Default color for the 13 button
  Color? _iconColor14 = Colors.black; // Default color for the 14 button
  Color? _iconColor15 = Colors.black; // Default color for the 15 button
  Color? _iconColor16 = Colors.black; // Default color for the 16 button
  Color? _iconColor17 = Colors.black; // Default color for the 17 button
  Color? _iconColor18 = Colors.black; // Default color for the 18 button
  Color? _iconColor19 = Colors.black; // Default color for the 19 button
  Color? _iconColor20 = Colors.black; // Default color for the 20 button
  Color? _iconColor21 = Colors.black; // Default color for the 21 button


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
                child: galleryGroup(getGroupByName('Gallery')),
              ),
              SizedBox(width: 31),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  build1Group(),
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
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor10 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor10),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor11 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor11),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 48.0),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor12 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor12),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
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
                    PopupMenuButton<String>(
                      onSelected: (String result) {
                        setState(() {
                          _iconColor13 = _getColorFromOption(result);
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
                        icon: Icon(Icons.computer, color: _iconColor13),
                        onPressed: null, // The popup menu will be shown when the button is tapped
                      ),
                    ),
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
                    PopupMenuButton<String>(
                      onSelected: (String result) {
                        setState(() {
                          _iconColor14 = _getColorFromOption(result);
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
                        icon: Icon(Icons.computer, color: _iconColor14),
                        onPressed: null, // The popup menu will be shown when the button is tapped
                      ),
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
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor15 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor15),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        SizedBox(width: 192.0),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor16 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor16),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        SizedBox(width: 192.0),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor17 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor17),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor18 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor18),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor19 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor19),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor20 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor20),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _iconColor21 = _getColorFromOption(result);
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
                            icon: Icon(Icons.computer, color: _iconColor21),
                            onPressed: null, // The popup menu will be shown when the button is tapped
                          ),
                        ),
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

  Container build1Group() {
    return Container(
        color: Colors.redAccent,
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        child:
        PopupMenuButton<String>(
          onSelected: (String result) {
            setState(() {
              _iconColor9 = _getColorFromOption(result);
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
            icon: Icon(Icons.computer, color: _iconColor9),
            onPressed: null, // The popup menu will be shown when the button is tapped
          ),
        ),
    );
  }

  Column galleryGroup(ComputerGroup group) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ComputerButton(computer: group.computers[0]),
            ComputerButton(computer: group.computers[1]),
            ComputerButton(computer: group.computers[2]),
            ComputerButton(computer: group.computers[3]),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ComputerButton(computer: group.computers[4]),
            ComputerButton(computer: group.computers[5]),
            ComputerButton(computer: group.computers[6]),
            ComputerButton(computer: group.computers[7]),
          ],
        ),
      ],
    );
  }

  Color? _getColorFromOption(String option) {
    switch (option) {
      case 'Busy':
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

ComputerGroup generateComputerGroup(String name, int computersAmount){
  List<Computer> ls = [];
  for (var i = 0; i < computersAmount; ++i) {
    ls.add(Computer(state: ComputerState.defaultState));
  }
  return ComputerGroup(ComputerGroupMetaData(name), ls);
}

Color getColorFromState(ComputerState state) {
  switch (state) {
    case ComputerState.busy:
      return Colors.blue;
    case ComputerState.maintenance:
      return Colors.red;
    case ComputerState.rendering:
      return Colors.orange;
    case ComputerState.available:
      return Colors.green;
    default:
      return Colors.black;
  }
}

enum ComputerState {
  defaultState,
  busy,
  maintenance,
  rendering,
  available
}

Map menuOptionsMap = {
  'Busy' : ComputerState.busy,
  'Maintenance' : ComputerState.maintenance,
  'Rendering' : ComputerState.rendering,
  'Available' : ComputerState.available,
};

class Computer {
  late ComputerGroup? group;
  late String name;
  late ComputerState state;
  Computer({this.name = "default_name", required this.state});
  void setState(ComputerState state) => this.state = state;
}


class ComputerGroupMetaData {
  late String name;
  ComputerGroupMetaData(this.name);
}

class ComputerGroup {
  late ComputerGroupMetaData metaData;
  late List<Computer> computers;

  ComputerGroup(this.metaData, this.computers) {
    for (var i = 0; i < computers.length; ++i) {
      computers[i].name = '${metaData.name} ${i + 1}';
      computers[i].group = this;
    }
  }
}

class ComputerButton extends StatefulWidget {
  const ComputerButton({super.key, required this.computer});
  final Computer computer;

  @override
  State<ComputerButton> createState() => _ComputerButtonState();
}

class _ComputerButtonState extends State<ComputerButton> {
  Color buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String result) {
        setState(() {
          widget.computer.state = menuOptionsMap[result];
        });
      },
      itemBuilder: (BuildContext context) {
        return menuOptionsMap.entries.toList().map((entry) {
          return PopupMenuItem<String>(
            value: entry.key.toString(),
            child: Text(entry.key.toString()),
          );
        }).toList();
      },
      child: IconButton(
        iconSize: 30.0,
        icon: Icon(Icons.computer, color: getColorFromState(widget.computer.state)),
        onPressed: null, // The popup menu will be shown when the button is tapped
      ),
    );
  }
}



