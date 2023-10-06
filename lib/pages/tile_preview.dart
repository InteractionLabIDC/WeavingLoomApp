import 'package:flutter/material.dart';

class TilePreview extends StatefulWidget {
  const TilePreview({super.key});

  @override
  State<TilePreview> createState() => _TilePreviewState();
}

class _TilePreviewState extends State<TilePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Tile Preview"),
    );
  }
}
