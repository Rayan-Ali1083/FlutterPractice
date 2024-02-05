import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.amber.shade200,
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text("Welcome to To-Do App ⌛"),
            titleTextStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          body: const Padding(
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'To DO Item # 1',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'To DO Item # 2',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'To DO Item # 3',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.amber,
                  ),
                ),
                Icon(
                  Icons.add_circle,
                  color: Colors.blue,
                  size: 35,
                ),
              ],
            ),
          )),
    );
  }
}
