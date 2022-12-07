// To parse this JSON data, do
//
//     final people = peopleFromJson(jsonString);

import 'dart:convert';

People peopleFromJson(String str) => People.fromJson(json.decode(str));

String peopleToJson(People data) => json.encode(data.toJson());

class People {
  People({
    this.name,
    this.height,
    this.mass,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
    this.birthYear,
    this.gender,
    this.homeworld,
  
  });

  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;

  factory People.fromJson(Map<String, dynamic> json) => People(
        name: json["name"],
        height: json["height"],
        mass: json["mass"],
        hairColor: json["hair_color"],
        skinColor: json["skin_color"],
        eyeColor: json["eye_color"],
        birthYear: json["birth_year"],
        gender: json["gender"],
        homeworld: json["homeworld"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "height": height,
        "mass": mass,
        "hair_color": hairColor,
        "skin_color": skinColor,
        "eye_color": eyeColor,
        "birth_year": birthYear,
        "gender": gender,
        "homeworld": homeworld,
      };
}
