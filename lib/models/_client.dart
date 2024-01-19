class Client {
  final int clientid;
  final String nom;
  final String prenom;
  final String email;
  final String adresse;

  Client({
      required this.clientid,
      required this.nom,
      required this.prenom,
      required this.email,
      required this.adresse,
    });

factory Client.fromMap(Map<String, dynamic> map){
    return Client(
      clientid: map['clientid'],
      nom: map['nom'],
      prenom: map['prenom'],
      email: map['email'],
      adresse: map['adresse'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'clientid':clientid,
      'nom':nom,
      'prenom': prenom,
      'email': email,
      'adresse': adresse,
    };
  }




}