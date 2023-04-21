class DataModel {
  String? name;
  String? description;
  int? price;
  int? people;
  int? stars;
  String? img;
  String? location;

  DataModel({
    this.name,
    this.description,
    this.price,
    this.people,
    this.stars,
    this.img,
    this.location,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      people: json['people'],
      stars: json['stars'],
      img: json['img'],
      location: json['location'],
    );
  }
}
