import 'package:flutter/material.dart';
import 'package:flutter_launch_url/my_url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('URL Launcher'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const MyUrlLauncher(),
      ),
    );
  }
}
