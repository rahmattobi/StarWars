class Film {
  String? title;
  int? episodeId;
  String? openingCrawl;
  String? director;
  String? producer;
  String? releaseDate;
  List<String>? characters;
  List<String>? planets;
  List<String>? starships;
  List<String>? vehicles;
  List<String>? species;
  String? created;
  String? edited;
  String? url;

  Film(
      {this.title,
      this.episodeId,
      this.openingCrawl,
      this.director,
      this.producer,
      this.releaseDate,
      this.characters,
      this.planets,
      this.starships,
      this.vehicles,
      this.species,
      this.created,
      this.edited,
      this.url});

  Film.fromJson(Map<String, dynamic>? json) {
    title = json?['title'];
    episodeId = json?['episode_id'];
    openingCrawl = json?['opening_crawl'];
    director = json?['director'];
    producer = json?['producer'];
    releaseDate = json?['release_date'];
    characters = json?['characters'].cast<String>();
    planets = json?['planets'].cast<String>();
    starships = json?['starships'].cast<String>();
    vehicles = json?['vehicles'].cast<String>();
    species = json?['species'].cast<String>();
    created = json?['created'];
    edited = json?['edited'];
    url = json?['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['episode_id'] = episodeId;
    data['opening_crawl'] = openingCrawl;
    data['director'] = director;
    data['producer'] = producer;
    data['release_date'] = releaseDate;
    data['characters'] = characters;
    data['planets'] = planets;
    data['starships'] = starships;
    data['vehicles'] = vehicles;
    data['species'] = species;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;
    return data;
  }
}
