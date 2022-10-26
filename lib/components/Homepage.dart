import 'package:flutter/material.dart';
import '../utils/data.dart';
import 'DetailPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
