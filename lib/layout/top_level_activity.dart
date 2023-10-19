// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:laboratorio_list_views_and_adapters/layout/category_activity.dart';


class top_level_activity extends StatelessWidget {
  const top_level_activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a la app'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Reporte Situación Anormal'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const category_activity()),
              );
            },
          ),
        ],
      ),
    );
  }
}

