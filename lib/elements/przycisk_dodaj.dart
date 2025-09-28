import 'package:flutter/material.dart';

class PrzyciskDodaj extends StatelessWidget {
  
  final Function() dodajfunkcja;
  final String text;
  
  const PrzyciskDodaj({super.key,
  required this.text,
  required this.dodajfunkcja,


  });

  @override
  Widget build(BuildContext context) {
    return Padding(  
            
            padding: const EdgeInsets.symmetric(horizontal: 150.0),
            
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple
              ),
             
              onPressed: dodajfunkcja, 
              
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              
            ),
          );
  }
}