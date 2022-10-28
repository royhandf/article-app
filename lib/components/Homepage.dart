import 'package:flutter/material.dart';
import '../utils/data.dart';
import 'DetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Jatim"),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Image.asset('assets/${articles[index]['image']}'),
              title: Text(articles[index]['title']),
              subtitle: Text(articles[index]['timeUploaded']),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(index),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
