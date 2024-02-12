import 'package:flutter/material.dart';

class Creerclient extends StatelessWidget{
   const Creerclient ({Key ? key}) : super (key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créer un client'),
      ),
      body: const Center(
        child: Text('Créer client'),
      ),
    );

  }
}