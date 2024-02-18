import 'dart:html';

import 'package:flutter/cupertino.dart';
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
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 100, 183, 65),
          child: Container(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
            ),
            child: ListView(
              children: const [
                ListTile(
                  textColor: Color.fromARGB(255, 251, 246, 238),
                  title: Text('Home'),
                  trailing: Icon(
                    CupertinoIcons.house_fill,
                    color: Color.fromARGB(255, 251, 246, 238),
                  ),
                ),
                ListTile(
                  textColor: Color.fromARGB(255, 251, 246, 238),
                  title: Text('Favourites'),
                  trailing: Icon(
                    CupertinoIcons.heart_fill,
                    color: Color.fromARGB(255, 251, 246, 238),
                  ),
                ),
                ListTile(
                    textColor: Color.fromARGB(255, 251, 246, 238),
                    title: Text('Done'),
                    trailing: Icon(CupertinoIcons.checkmark_alt,
                        color: Color.fromARGB(255, 251, 246, 238))),
                ListTile(
                    textColor: Color.fromARGB(255, 251, 246, 238),
                    title: Text('Delete'),
                    trailing: Icon(
                      CupertinoIcons.trash_fill,
                      color: Color.fromARGB(255, 251, 246, 238),
                    )),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Flutter Practice',
              style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 255, 181, 52),
        ),
        body: const FullBody(),
      ),
    );
  }
}

class FullBody extends StatelessWidget {
  const FullBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 100, 183, 65),
      ),
      child: Center(
        child: Container(
          height: 520,
          width: 1080,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 192, 242, 176),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: const TextList(),
        ),
      ),
    );
  }
}

class TextList extends StatelessWidget {
  const TextList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Todo Item Task 1'),
            Container(
              width: 150,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(CupertinoIcons.heart),
                  Icon(CupertinoIcons.check_mark),
                  Icon(CupertinoIcons.xmark),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Todo Item Task 2'),
            Container(
              width: 150,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(CupertinoIcons.heart),
                  Icon(CupertinoIcons.check_mark),
                  Icon(CupertinoIcons.xmark),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Todo Item Task 3'),
            Container(
              width: 150,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(CupertinoIcons.heart),
                  Icon(CupertinoIcons.check_mark),
                  Icon(CupertinoIcons.xmark),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
