import 'package:flutter/material.dart';

import '../widget/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.purple[100],
                  padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: BasicIconButton.generateList(4),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: BasicIconButton.generateList(4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 31),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.redAccent,
                      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                      child: IconButton(
                        iconSize: 30.0,
                        onPressed: () {
                          const snackBar = SnackBar(
                            content: Text('Computer 9'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: const Icon(Icons.computer),
                      ),
                    ),
                    const SizedBox(height: 48.0),
                  ],
                ),
                const SizedBox(width: 2),
                Container(
                  color: Colors.pink[100],
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: BasicIconButton.generateList(2),
                      ),
                      const Row(
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
                const SizedBox(width: 293),
                Container(
                  color: Colors.greenAccent,
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 48.0),
                      BasicIconButton(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 293),
                Container(
                  color: Colors.orangeAccent,
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 48.0),
                      BasicIconButton(),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 149), // Add space between the containers
                Container(
                  color: Colors.lightBlue[100],
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BasicIconButton(),
                          SizedBox(width: 192.0),
                        ],
                      ),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BasicIconButton(),
                          SizedBox(width: 192.0),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: BasicIconButton.generateList(5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
