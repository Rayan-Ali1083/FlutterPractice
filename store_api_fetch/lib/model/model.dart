class Item {
  var id;
  var title;
  var price;
  var category;
  var description;
  var image;
  var rating;

  Item(
      {this.id,
      this.title,
      this.price,
      this.category,
      this.description,
      this.image,
      this.rating});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    category = json['category'];
    description = json['description'];
    image = json['image'];
    rating = json['rating'];
  }

}
