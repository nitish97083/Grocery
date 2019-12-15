class CartValue {
  int productId;
  String nameInEng;
  String nameInHin;
  String description;
  String imageUrl;
  int categoryId;
  int subCategoryId;
  String quantity;
  String brand;
  int cartCount;

  String mrp;
  String price;

  int popularity;
  String createdAt;

  CartValue(
      {this.productId,
      this.nameInEng,
      this.nameInHin,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.subCategoryId,
      this.quantity,
      this.brand,
      this.cartCount,
      this.mrp,
      this.price,
      this.popularity,
      this.createdAt});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['name_in_eng'] = this.nameInEng;
    data['name_in_hin'] = this.nameInHin;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['category_id'] = this.categoryId;
    data['sub_category_id'] = this.subCategoryId;
    data['quantity'] = this.quantity;
    data['brand'] = this.brand;
    data['cartcount'] = this.cartCount;
//    data['model'] = this.model;
    //data['configuration'] = this.configuration;
    data['mrp'] = this.mrp;
    data['price'] = this.price;
//    data['featured'] = this.featured;
    data['popularity'] = this.popularity;
    data['created_at'] = this.createdAt;
    return data;
  }

  CartValue.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    nameInEng = json['name_in_eng'];
    nameInHin = json['name_in_hin'];
    description = json['description'];
    imageUrl = json['image_url'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    quantity = json['quantity'];
    brand = json['brand'];
    cartCount = json['cartcount'];
//    model = json['model'];
//    configuration = json['configuration'];
    mrp = json['mrp'];
    price = json['price'];
//    featured = json['featured'];
    popularity = json['popularity'];
    createdAt = json['created_at'];
  }
}
