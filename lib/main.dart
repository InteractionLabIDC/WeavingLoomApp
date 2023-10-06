import 'package:flutter/material.dart';
import 'package:loom_app/pages/add_tile.dart';
import 'package:loom_app/pages/tile_preview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddTileScreen(),
    );
  }
}
