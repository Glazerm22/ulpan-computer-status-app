import 'package:flutter/material.dart';

class UlpanFloatingActionButton extends StatelessWidget {
  const UlpanFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('You clicked on "click"!'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.touch_app),
      );
}

class UlpanAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UlpanAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Ulpan Computer Manager'),
        centerTitle: true,
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
