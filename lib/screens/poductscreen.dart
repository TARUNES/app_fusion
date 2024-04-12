import 'package:flutter/material.dart';

class CookerDetailScreen extends StatelessWidget {
  final String cookerImageUrl;

  const CookerDetailScreen({required this.cookerImageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cooker Details'),
      ),
      body: Center(
        child: Image.asset(cookerImageUrl),
      ),
    );
  }
}
