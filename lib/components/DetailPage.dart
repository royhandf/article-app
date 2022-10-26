import 'package:flutter/material.dart';
import '../utils/data.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Wisata'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/${articles[index]['image']}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              articles[index]['title'],
              style: const TextStyle(fontSize: 26),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 17.0),
            child: Text(
              articles[index]['timeUploaded'],
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Text(
              articles[index]['description'],
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
