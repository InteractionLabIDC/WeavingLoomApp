import 'package:flutter/material.dart';

class TileAction extends StatefulWidget {
  const TileAction({super.key});

  @override
  State<TileAction> createState() => _TileActionState();
}

class _TileActionState extends State<TileAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Tile Action"),
    );
  }
}
