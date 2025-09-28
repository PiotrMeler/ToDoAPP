import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';



class Zadanie extends StatelessWidget {
  
  final VoidCallback usuwanie;
  final bool? wartosc;
  final void Function(bool?)? onChanged;
  final String text;
  
  const Zadanie({super.key, 
  required this.wartosc, 
  required this.onChanged,
  required this.text,
  required this.usuwanie,
  
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(), 
        children: [
          SlidableAction(onPressed: (_) {
            usuwanie();
          },
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Colors.red,
          icon: Icons.delete,
          label: "Usuń",
          
          )
        ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.purple,
          ),
          height: 40,
          
          child: Row(
            children: [
              Checkbox(
                value: wartosc, 
                onChanged: onChanged,
              ),
      
              Expanded(
                child: Text(
                  text,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}