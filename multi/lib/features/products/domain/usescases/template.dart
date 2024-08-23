class Template {
  Template({
    required this.id,
    required this.name,
  
  });

  /// ID of the message
  final String id;

  /// ID of the user who posted the message
  final String name;

  
 
  factory Template.fromJson(Map<String, dynamic> json) {
    return Template(
      id: json['id_cliente'],
      name: json['numero_doc'],
    );
  }
  
  Template.fromMap({
    required Map<String, dynamic> map,
    required String myUserId,
  })  : id = map['id_cliente'].toString(),
        name = map['numero_doc'];
}