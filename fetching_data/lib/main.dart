import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<List<dynamic>?> fetchResponse() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetching data',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data'),
          centerTitle: true,
        ),
        body: FutureBuilder<List<dynamic>?>(
          future: fetchResponse(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            final data = snapshot.data;
            if (data == null) {
              return const Center(child: Text('No Data Available'));
            }

            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(title: Text(data[index]['postId'].toString())),
                        ListTile(title: Text(data[index]['id'].toString())),
                        ListTile(title: Text(data[index]['name'].toString())),
                        ListTile(title: Text(data[index]['email'].toString())),
                        ListTile(title: Text(data[index]['body'].toString())),
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
