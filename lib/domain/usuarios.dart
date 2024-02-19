import 'dart:convert';

List<Usuarios> usuariosFromJson(String str) =>
    List<Usuarios>.from(json.decode(str).map((x) => Usuarios.fromJson(x)));

class Usuarios {
  int id;
  String name;
  String email;
  int phone;
  String picture;
  String dob;
  String location;
  String profession;

  Usuarios({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.picture,
    required this.dob,
    required this.location,
    required this.profession,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        picture: json["picture"],
        dob: json["dob"],
        location: json["location"],
        profession: json["profession"],
      );
}
