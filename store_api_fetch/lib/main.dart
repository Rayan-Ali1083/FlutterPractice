import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_api_fetch/model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<List<Item>> getItems() async {
    final res = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    final List body = json.decode(res.body);

    return body.map((e) => Item.fromJson(e)).toList();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Store Items'),
        ),
        body: FutureBuilder<List<Item>>(
            future: getItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 10),
                      Text('Loading...'),
                    ],
                  ),
                );
              }
              if (snapshot.hasData) {
                final items = snapshot.data!;

                return buildItems(items);
              } else {
                return const Text('No data found');
              }
            }),
      ),
    );
  }

  Widget buildItems(List<Item> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(item.image, width: 100, height: 100),
                SizedBox(child: Text('Title: ${item.title}')),
                SizedBox(child: Text('Price: \$${item.price.toString()}')),
                SizedBox(child: Text('Category: ${item.category}')),
                SizedBox(child: Text('Description: ${item.description}')),
                SizedBox(child: Text('Rating: ${item.rating.toString()}')),
              ],
            ),
          );
        });
  }
}
