class Species {
  String? name;
  String? classification;
  String? designation;
  String? averageHeight;
  String? skinColors;
  String? hairColors;
  String? eyeColors;
  String? averageLifespan;
  String? homeworld;
  String? language;
  List<String>? people;
  List<String>? films;
  String? created;
  String? edited;
  String? url;

  Species(
      {this.name,
      this.classification,
      this.designation,
      this.averageHeight,
      this.skinColors,
      this.hairColors,
      this.eyeColors,
      this.averageLifespan,
      this.homeworld,
      this.language,
      this.people,
      this.films,
      this.created,
      this.edited,
      this.url});

  Species.fromJson(Map<String, dynamic>? json) {
    name = json?['name'];
    classification = json?['classification'];
    designation = json?['designation'];
    averageHeight = json?['average_height'];
    skinColors = json?['skin_colors'];
    hairColors = json?['hair_colors'];
    eyeColors = json?['eye_colors'];
    averageLifespan = json?['average_lifespan'];
    homeworld = json?['homeworld'];
    language = json?['language'];
    people = json?['people'].cast<String>();
    films = json?['films'].cast<String>();
    created = json?['created'];
    edited = json?['edited'];
    url = json?['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['classification'] = classification;
    data['designation'] = designation;
    data['average_height'] = averageHeight;
    data['skin_colors'] = skinColors;
    data['hair_colors'] = hairColors;
    data['eye_colors'] = eyeColors;
    data['average_lifespan'] = averageLifespan;
    data['homeworld'] = homeworld;
    data['language'] = language;
    data['people'] = people;
    data['films'] = films;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;
    return data;
  }
}
