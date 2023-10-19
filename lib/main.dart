import 'package:flutter/material.dart';

import 'package:laboratorio_list_views_and_adapters/layout/layout.dart';

void main() => runApp( const MyApp() );

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const top_level_activity(),
      routes: {
        'category': ( BuildContext context ) => const category_activity(),
        
                
      }
    );
    
  }
}