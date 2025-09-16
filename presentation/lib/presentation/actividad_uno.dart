import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Actividaduno extends StatelessWidget {
    const Actividaduno({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFORMACION PERSONAL', style: TextStyle(fontSize: 40, color: Colors.red )),
        actions: [IconButton(icon: Icon(Icons.exit_to_app),   
                             onPressed: () { exit(0);},),],
      ),
body: Column(
  children: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://avatars.githubusercontent.com/u/226424299?v=4',
          width: 200,
          height: 200,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('WILLIAM EVAD MARRUGO RUIZ',style: TextStyle(fontWeight: FontWeight.bold)),
            Text('ESTUDIANTE DE INGENIERIA EN SISTEMAS'),
            Text('CC 1048435486'),
            Text('TEL 3218364688'),
          ],
        ),
      ],
    ),
  ],
),
        
        
        
        

    bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
      icon: Icon(Icons.add_alarm_rounded),
      label: 'github',
    ),
      BottomNavigationBarItem(
      icon: Icon(Icons.add_a_photo_outlined),
      label: 'linkedin',
    ),
      BottomNavigationBarItem(
      icon: Icon(Icons.add_alert_rounded),
      label: 'twitter',
    ),
      
  ],
),
      

    );
  }

}