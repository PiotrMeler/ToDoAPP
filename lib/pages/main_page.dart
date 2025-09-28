// ignore_for_file: prefer_const_constructors, void_checks, avoid_print

import 'package:flutter/material.dart';
import 'package:testowa/elements/pole_tekstowe.dart';
import 'package:testowa/elements/przycisk_dodaj.dart';
import 'package:testowa/elements/zadanie.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController();

  List zadania = [
    
  ];
  
  bool wartosc = false;
  
  String tekst = "";

  void usuwanie (index) {
    setState(() {
      zadania.removeAt(index);
    });
    
    
  }

  void zmiana (bool? value, index) {
    
    setState(() {
      zadania[index][0] = !zadania[index][0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(child: Text("Do Zrobienia")),
        ),

      body: ListView.builder(
        itemCount: zadania.length + 2,
        itemBuilder: (context, index) {

        if (index < zadania.length) {
          return Zadanie(
            wartosc: zadania[index][0], 
            onChanged: (bool? value) {
              zmiana(value, index);
            }, 
            text: zadania[index][1],
            usuwanie: () => usuwanie(index),
          );
        }
        
        else if (index == zadania.length){
          return PoleTekstowe(
            controller: controller,
            hintext: "Wpisz kolejne zadanie",
            );        
        }
        
        else {
          return PrzyciskDodaj(
            text: "Dodaj...",
            dodajfunkcja: () {
              tekst = controller.text;
              controller.clear();
              
              setState(() {
                zadania.add([wartosc, tekst]);
              });


            },
          );
        }
          
        },
      ),            
      );
  }
}