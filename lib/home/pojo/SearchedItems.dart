import 'dart:convert';

SearchedProducts searchedProductsFromJson(String str) => SearchedProducts.fromJson(json.decode(str));

String searchedProductsToJson(SearchedProducts data) => json.encode(data.toJson());

class SearchedProducts {
  bool success;
  List<Datum> data;
  String message;

  SearchedProducts({
    this.success,
    this.data,
    this.message,
  });

  factory SearchedProducts.fromJson(Map<String, dynamic> json) => SearchedProducts(
    success: json["Success"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

   Map<String, dynamic> toJson() => {
    "Success": success,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  int productId;
  String nameInEng;
  String nameInHin;
  String description;
  String imageUrl;
  int categoryId;
  int subCategoryId;
  String quantity;
  String brand;
  dynamic model;
  dynamic configuration;
  String mrp;
  String price;
  dynamic featured;
  int popularity;
  DateTime createdAt;

  Datum({
    this.productId,
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
    this.createdAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    productId: json["product_id"],
    nameInEng: json["name_in_eng"],
    nameInHin: json["name_in_hin"],
    description: json["description"] == null ? null : json["description"],
    imageUrl: json["image_url"],
    categoryId: json["category_id"],
    subCategoryId: json["sub_category_id"],
    quantity: json["quantity"],
    brand: json["brand"],
    model: json["model"],
    configuration: json["configuration"],
    mrp: json["mrp"],
    price: json["price"],
    featured: json["featured"],
    popularity: json["popularity"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "name_in_eng": nameInEng,
    "name_in_hin": nameInHin,
    "description": description == null ? null : description,
    "image_url": imageUrl,
    "category_id": categoryId,
    "sub_category_id": subCategoryId,
    "quantity": quantity,
    "brand": brand,
    "model": model,
    "configuration": configuration,
    "mrp": mrp,
    "price": price,
    "featured": featured,
    "popularity": popularity,
    "created_at": createdAt.toIso8601String(),
  };
}