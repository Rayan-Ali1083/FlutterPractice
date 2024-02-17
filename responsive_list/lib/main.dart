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
            title: const Text('Flutter Demo',
                style: TextStyle(color: Colors.white)),
          ),
          body: OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? const _buildPortrait()
                : const _buildLandScape();
          }),
        ));
  }
}

class _buildPortrait extends StatelessWidget {
  const _buildPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title: Center(child: Text('Item $index')),
        ),
      ),
    );
  }
}

class _buildLandScape extends StatelessWidget {
  const _buildLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 10,
        children:
            List.generate(20, (index) => Center(child: Text('Item $index'))));
  }
}
