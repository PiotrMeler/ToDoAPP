import 'package:flutter/material.dart';

class PoleTekstowe extends StatelessWidget {
  
  final TextEditingController controller;
  final String hintext;


  const PoleTekstowe({super.key, 
  required this.controller,
  required this.hintext,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintext,
        ),
        controller: controller,
      ),
    );
  }
}