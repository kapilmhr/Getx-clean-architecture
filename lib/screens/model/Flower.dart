class FlowerList {
  List<Flower> flowerLists = [];

  FlowerList(this.flowerLists);

  factory FlowerList.fromJson(List<dynamic> json) {
    return FlowerList(json.map((i) => Flower.fromJson(i)).toList());
  }
}

class Flower {
  String category = "";
  double price = 0.0;
  String instructions = "";
  String photo = "";
  String name = "";
  int productId = 0;

  Flower(this.category, this.price, this.instructions, this.photo, this.name,
      this.productId);

  Flower.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    price = json['price'];
    instructions = json['instructions'];
    photo = json['photo'];
    name = json['name'];
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['category'] = this.category;
    data['price'] = this.price;
    data['instructions'] = this.instructions;
    data['photo'] = this.photo;
    data['name'] = this.name;
    data['productId'] = this.productId;
    return data;
  }
}
