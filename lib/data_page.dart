class Pokemons {
  List<String>? abilities;
  String? detailPageURL;
  int? weight;
  List<String>? weakness;
  String? number;
  int? height;
  String? collectiblesSlug;
  String? featured;
  String? slug;
  String? description;
  String? name;
  String? thumbnailAltText;
  String? thumbnailImage;
  int? id;
  List<String>? type;

  Pokemons(
      {this.abilities,
      this.detailPageURL,
      this.weight,
      this.weakness,
      this.number,
      this.height,
      this.collectiblesSlug,
      this.featured,
      this.slug,
      this.description,
      this.name,
      this.thumbnailAltText,
      this.thumbnailImage,
      this.id,
      this.type});

  Pokemons.fromJson(Map<String, dynamic> json) {
    abilities = json['abilities'].cast<String>();
    detailPageURL = json['detailPageURL'];
    weight = json['weight'];
    weakness = json['weakness'].cast<String>();
    number = json['number'];
    height = json['height'];
    collectiblesSlug = json['collectibles_slug'];
    featured = json['featured'];
    slug = json['slug'];
    description = json['description'];
    name = json['name'];
    thumbnailAltText = json['thumbnailAltText'];
    thumbnailImage = json['thumbnailImage'];
    id = json['id'];
    type = json['type'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['abilities'] = abilities;
    data['detailPageURL'] = detailPageURL;
    data['weight'] = weight;
    data['weakness'] = weakness;
    data['number'] = number;
    data['height'] = height;
    data['collectibles_slug'] = collectiblesSlug;
    data['featured'] = featured;
    data['slug'] = slug;
    data['description'] = description;
    data['name'] = name;
    data['thumbnailAltText'] = thumbnailAltText;
    data['thumbnailImage'] = thumbnailImage;
    data['id'] = id;
    data['type'] = type;
    return data;
  }
}
