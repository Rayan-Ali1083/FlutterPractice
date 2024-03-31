import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Reponsive UI Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:
              const Text('Flutter Demo', style: TextStyle(color: Colors.white)),
        ),
        body: const Center(
          child: Image(
              image: NetworkImage(
                  'https://m.media-amazon.com/images/I/81Ce6sxskfL.jpg')),
        ),
      ),
    );
  }
}
