// ignore_for_file: camel_case_types, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:laboratorio_list_views_and_adapters/layout/detail.dart';
import 'package:laboratorio_list_views_and_adapters/layout/situation.dart';

class category_activity extends StatelessWidget {
  const category_activity({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Situation> situations = [
      Situation('Accidente', 'Se produjo un accidente en la carrera 30 cuando una motocicleta no respetó el semáforo y colisionó con un vehículo.'),
      Situation('Obstrucción', 'Se registró una obstrucción en la intersección de la Avenida Caracas con la Calle 19 debido a una manifestación'),
      Situation('Condición Climática', 'Mañana se llevará a cabo un día sin carro y moto como medida para mejorar las condiciones climáticas.'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorías de Situaciones Anormales'),
      ),
      body: ListView.builder(
        itemCount: situations.length,
        itemBuilder: (context, index) {
          final situation = situations[index];
          return ListTile(
            leading: const Icon(Icons.info),
            title: Text(situation.name),
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(situation: situation),
                  ),
                );
              }
          );
        },
      ),
    );
  }
}

  



