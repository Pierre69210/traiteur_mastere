class Commandeplat {
  final int commandeid;
  final int id;
  final int platid;


  Commandeplat({
      required this.commandeid,
      required this.id,
      required this.platid,
    });

factory Commandeplat.fromMap(Map<String, dynamic> map){
    return Commandeplat(
      commandeid: map['commandeid'],
      id: map['id'],
      platid: map['commandeplatid'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'commandeid':commandeid,
      'id':id,
      'commandeplatid': platid,
    };
  }




}