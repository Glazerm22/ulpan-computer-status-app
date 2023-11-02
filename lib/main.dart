import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path/path.dart';

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
        title: const Text('Ulpan Computer Manager'),
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

  ComputerGroup getGroupByName(String name) {
    return computerGroups
        .firstWhere((element) => element.metaData.name == 'Gallery');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'ENTRANCE',
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 18.0,
            letterSpacing: 1.0,
          ),
        ),
        const Center(
          child: Icon(
            size: 50.0,
            Icons.sensor_door_outlined,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildGalleryGroup(getGroupByName('Gallery')),
            const SizedBox(width: 31),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildEdit1Group((getGroupByName('Edit1'))),
                const SizedBox(height: 48.0),
              ],
            ),
            const SizedBox(width: 2),
            buildMicroGroup((getGroupByName('Micro'))),
          ],
        ),
        const SizedBox(height: 1),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 293),
            buildInternetGroup((getGroupByName('Internet'))),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 293),
            buildEdit2Group((getGroupByName('Edit2'))),
          ],
        ),
        const SizedBox(height: 1),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 149), // Add space between the containers
            buildGraphicsGroup((getGroupByName('Graphics'))),
          ],
        ),
      ],
    );
  }

  Container buildGalleryGroup(ComputerGroup group) {
    return Container(
      color: Colors.grey[850],
      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      child: Column(
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
      ),
    );
  }

  Container buildEdit1Group(ComputerGroup group) {
    return Container(
      color: Colors.grey[850],
      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      child: ComputerButton(computer: group.computers[0]),
    );
  }

  Container buildMicroGroup(ComputerGroup group) {
    return Container(
      color: Colors.grey[850],
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ComputerButton(computer: group.computers[0]),
              ComputerButton(computer: group.computers[1]),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 48.0),
              ComputerButton(computer: group.computers[2]),
            ],
          ),
        ],
      ),
    );
  }

  Container buildInternetGroup(ComputerGroup group) {
    return Container(
      color: Colors.grey[850],
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 48.0),
          ComputerButton(computer: group.computers[0]),
        ],
      ),
    );
  }

  Container buildEdit2Group(ComputerGroup group) {
    return Container(
      color: Colors.grey[850],
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 48.0),
          ComputerButton(computer: group.computers[0]),
        ],
      ),
    );
  }

  Container buildGraphicsGroup(ComputerGroup group) {
    return Container(
      color: Colors.grey[850],
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ComputerButton(computer: group.computers[0]),
              const SizedBox(width: 192.0),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ComputerButton(computer: group.computers[1]),
              const SizedBox(width: 192.0),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ComputerButton(computer: group.computers[2]),
              ComputerButton(computer: group.computers[3]),
              ComputerButton(computer: group.computers[4]),
              ComputerButton(computer: group.computers[5]),
              ComputerButton(computer: group.computers[6]),
            ],
          ),
        ],
      ),
    );
  }
}

ComputerGroup generateComputerGroup(String name, int computersAmount) {
  List<Computer> ls = [];
  for (var i = 0; i < computersAmount; ++i) {
    ls.add(Computer(state: ComputerState.defaultState));
  }
  return ComputerGroup(ComputerGroupMetaData(name), ls);
}

Color? getColorFromState(ComputerState state) {
  switch (state) {
    case ComputerState.busy:
      return Colors.deepPurple;
    case ComputerState.maintenance:
      return Colors.red;
    case ComputerState.rendering:
      return Colors.orange;
    case ComputerState.available:
      return Colors.green;
    case ComputerState.hafifa:
      return Colors.blue[200];
    default:
      return Colors.grey[850];
  }
}

enum ComputerState { defaultState, busy, maintenance, rendering, available, hafifa }

Map menuOptionsMap = {
  'Busy': ComputerState.busy,
  'Maintenance': ComputerState.maintenance,
  'Rendering': ComputerState.rendering,
  'Available': ComputerState.available,
  'Hafifa': ComputerState.hafifa,
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
      child: Container(
        color: getColorFromState(widget.computer.state),
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: const IconButton(
          iconSize: 30.0,
          icon: Icon(Icons.computer, color: Colors.white),
          onPressed:
              null, // The popup menu will be shown when the button is tapped
        ),
      ),
    );
  }
}

