class CatergoryProductPojo {
  bool success;
  List<CateryProduct1> data;
  String message;

  CatergoryProductPojo({this.success, this.data, this.message});

  CatergoryProductPojo.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    if (json['data'] != null) {
      data = new List<CateryProduct1>();
      json['data'].forEach((v) {
        data.add(new CateryProduct1.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class CateryProduct1 {
  int productId;
  String nameInEng;
  String nameInHin;
  String description;
  String imageUrl;
  String categoryId;
  int subCategoryId;
  String quantity;
  String brand;
  Null model;
  Null configuration;
  String mrp;
  String price;
  Null featured;
  int popularity;
  String createdAt;

  CateryProduct1(
      {this.productId,
      this.nameInEng,
      this.nameInHin,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.subCategoryId,
      this.quantity,
      this.brand,
      this.model,
      this.configuration,
      this.mrp,
      this.price,
      this.featured,
      this.popularity,
      this.createdAt});

  CateryProduct1.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    nameInEng = json['name_in_eng'];
    nameInHin = json['name_in_hin'];
    description = json['description'];
    imageUrl = json['image_url'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    quantity = json['quantity'];
    brand = json['brand'];
    model = json['model'];
    configuration = json['configuration'];
    mrp = json['mrp'];
    price = json['price'];
    featured = json['featured'];
    popularity = json['popularity'];
    createdAt = json['created_at'];
  }

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
    data['model'] = this.model;
    data['configuration'] = this.configuration;
    data['mrp'] = this.mrp;
    data['price'] = this.price;
    data['featured'] = this.featured;
    data['popularity'] = this.popularity;
    data['created_at'] = this.createdAt;
    return data;
  }
}
