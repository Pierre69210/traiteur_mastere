import 'package:flutter/material.dart';

class CreerClient extends StatefulWidget {
  const CreerClient({super.key});

  @override
  _CreerClientState createState() => _CreerClientState();
}

class _CreerClientState extends State<CreerClient> {
  final _formKey = GlobalKey<FormState>();
  // Définition des TextEditingController
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _adresseController = TextEditingController();

  @override
  void dispose() {
    // Nettoyage des contrôleurs quand le Widget est supprimé
    _nomController.dispose();
    _prenomController.dispose();
    _emailController.dispose();
    _adresseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créer un client'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _nomController,
                decoration: const InputDecoration(
                  labelText: 'Nom',
                ),
              ),
              TextField(
                controller: _prenomController,
                decoration: const InputDecoration(
                  labelText: 'Prénom',
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextField(
                controller: _adresseController,
                decoration: const InputDecoration(
                  labelText: 'Adresse',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Utilisation des valeurs des contrôleurs ici
                  final String nom = _nomController.text;
                  final String prenom = _prenomController.text;
                  final String email = _emailController.text;
                  final String adresse = _adresseController.text;

                  // Affichage des valeurs dans la console pour vérification
                  print('Nom: $nom');
                  print('Prénom: $prenom');
                  print('Email: $email');
                  print('Adresse: $adresse');
                  // Exemple de création d'un objet Client (supposez que vous ayez une classe Client appropriée)
                  // Client nouveauClient = Client(nom: nom, prenom: prenom, email: email, adresse: adresse);

                  // Pour fermer le clavier après la soumission
                  FocusScope.of(context).unfocus();

                  // Optionnel: Afficher un message ou naviguer vers une autre page après l'ajout
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Client ajouté avec succès')));
                },
                child: const Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}