import 'package:flutter/material.dart';
import 'package:laboratorio_list_views_and_adapters/layout/situation.dart';

class DetailScreen extends StatelessWidget {
  final Situation situation;

  const DetailScreen({super.key, required this.situation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(situation.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16.0),
            Text(
              situation.name,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(situation.description),
          ],
        ),
      ),
    );
  }
}
