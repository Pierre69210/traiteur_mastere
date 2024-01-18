import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
    @override
    Widget build(BuildContext context){
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
            title: Text('Gestion Commandes Traiteur', 
            style: monPropreStyleTexte,
            ),
            centerTitle: true,
            actions: <Widget> [
              PopupMenuButton(
                itemBuilder: (BuildContext context)=> [
                  const PopupMenuItem(
                    value: 'Catalogue',
                    child: ListTile(
                      leading : Icon(Icons.food_bank),
                      title: Text('Catalogue des plats'),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'commande',
                    child: ListTile(
                    leading : Icon(Icons.shopping_basket),
                    title: Text('Gestion des commandes'),
                    ),
                  ),
                    const PopupMenuItem(
                      value: 'client',
                      child :ListTile(
                      leading: Icon(Icons.person_2), 
                      title: Text ('Espace client'),
                    ),
                  )
                ],
              )
            ],
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: monPropreStyle,
                  onPressed: () => {}, 
                  child: Text('catalogue des plats', 
                  style: monPropreStyleTexte,),
                  ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: monPropreStyle,
                  onPressed: () => {}, 
                  child: Text('gestion des commandes', 
                  style: monPropreStyleTexte,),
                  ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: monPropreStyle,
                  onPressed: () => {}, 
                  child: Text('Espace client', 
                  style: monPropreStyleTexte,),
                  ),
              ],),
        ),
        );
    }
}


ButtonStyle monPropreStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white,
    backgroundColor: const Color.fromARGB(255, 7, 145, 82), 
    minimumSize: const Size(300,50), 
    shape: const StadiumBorder(
    side: BorderSide(
      color: Color.fromARGB(221, 117, 13, 13),
      width: 2.0,
    ),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  elevation: 5,
);

TextStyle monPropreStyleTexte = const TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Roboto',
);

