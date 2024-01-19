import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
    @override
    Widget build(BuildContext context){
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
            title: 
            
            AnimatedTextKit(
              animatedTexts: 
              [
                TypewriterAnimatedText(
                  'Traiteur Demo',
                  textStyle: monPropreStyleTexte,
                  speed: const  Duration(milliseconds: 200),
                ),

                //RotateAnimatedText('traiteur Demo', textStyle: monPropreStyleTexte),
                //RotateAnimatedText('MANGE !!!', textStyle: monPropreStyleTexte),
                //RotateAnimatedText('COMMANDE !!', textStyle:monPropreStyleTexte),

                //TyperAnimatedText('Traiteur Demo', textStyle: monPropreStyleTexte),
                //TyperAnimatedText('MANGE !!', textStyle: monPropreStyleTexte),
                //TyperAnimatedText('COMMANDE !!', textStyle: monPropreStyleTexte),

                //ColorizeAnimatedText(
                //'Bon appetito !', 
                //textStyle : GoogleFonts.anton(
                //textStyle: const TextStyle(
                //fontSize: 50 ,
                //),
                //),
                //colors: [
                  //Colors.purple,
                  //Colors.blue,
                  //Colors.yellow,
                  //Colors.red,
                //]),

                //ColorizeAnimatedText('MANGE !!', 
                //textStyle: const TextStyle(
                //fontFamily: 'Horizon',
                //fontSize: 50 ,
                //),
                //colors: [
                  //Colors.purple,
                  //Colors.blue,
                  //Colors.yellow,
                  //Colors.red,
                //]),

                //ColorizeAnimatedText('COMMANDE !!', 
                //textStyle: const TextStyle(
                //fontFamily: 'Horizon',
                //fontSize: 50 ,
                //),
                //colors: [
                  //Colors.purple,
                  //Colors.blue,
                  //Colors.yellow,
                  //Colors.red,
                //])
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            )
            
            ,
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
                  onPressed: () => {print('Catalogue des plats')}, 
                  child: Text('catalogue des plats', 
                  style: monPropreStyleTexte,),
                  ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: monPropreStyle,
                  onPressed: () => {print('gestion des commandes')}, 
                  child: Text('gestion des commandes', 
                  style: monPropreStyleTexte,),
                  ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: monPropreStyle,
                  onPressed: () => {print ('espace client')}, 
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

TextStyle monPropreStyleTexte = GoogleFonts.roboto(
 textStyle : const TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Roboto',
),
);

