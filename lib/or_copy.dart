import 'package:flutter/material.dart';
import 'package:ulpan_computer_status_controller/page/home_page.dart';
import 'package:ulpan_computer_status_controller/page/home_page_advance.dart';
import 'package:ulpan_computer_status_controller/widget/buttons.dart';
import 'package:ulpan_computer_status_controller/widget/ulpan_widgets.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: const UlpanAppBar(),
      // body: const HomePage(),
      body: const AdvancedHomePage(),
      floatingActionButton: const UlpanFloatingActionButton()
    );
  }
}
