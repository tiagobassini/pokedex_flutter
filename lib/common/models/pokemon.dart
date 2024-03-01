
class Pokemon {
  final String name;
  final String image;
  final List<String> type;
  final String num;
  final int id;

  Pokemon({ 
    required this.id,
    required this.num,
    required this.name,
    required this.type,
    required this.image
  } );


  factory Pokemon.fromMap(Map<String, dynamic> json){

    return Pokemon(  
      name: json['name'],
      image: json['img'],
      id: json['id'],
      num: json['num'],
      type: (json['type'] as List<dynamic>).map((e)=> e as String).toList(),
    );
  }
}