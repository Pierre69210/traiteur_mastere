class Commande {
  final int commandeid;
  final int clientid;
  final double prix;
  final double date;

  Commande({
      required this.commandeid,
      required this.clientid,
      required this.prix,
      required this.date,
    });

factory Commande.fromMap(Map<String, dynamic> map){
    return Commande(
      commandeid: map['commandeid'],
      clientid: map['clientid'],
      prix: map['prix'],
      date: map['date'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'commandeid':commandeid,
      'clientid':clientid,
      'prix': prix,
      'date': date,
    };
  }




}