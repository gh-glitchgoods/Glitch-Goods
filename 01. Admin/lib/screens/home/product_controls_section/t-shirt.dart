import 'package:flutter/material.dart';

class AddShirt extends StatelessWidget {
  const AddShirt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T-Shirts'),
        titleSpacing: 0,
      ),
    );
  }
}
