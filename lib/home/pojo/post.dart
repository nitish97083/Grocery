class Post {
  bool success;
  Data data;
  String message;

  Post({this.success, this.data, this.message});

  Post.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  List<Categories> categories;
  List<TopProducts> topProducts;
  List<Recomanded> recomanded;
  List<Recent> recent;
  Data({this.categories, this.topProducts, this.recomanded, this.recent,});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    if (json['topProducts'] != null) {
      topProducts = new List<TopProducts>();
      json['topProducts'].forEach((v) {
        topProducts.add(new TopProducts.fromJson(v));
      });
    }
    if (json['recomanded'] != null) {
      recomanded = new List<Recomanded>();
      json['recomanded'].forEach((v) {
        recomanded.add(new Recomanded.fromJson(v));
      });
    }
    if (json['recent'] != null) {
      recent = new List<Recent>();
      json['recent'].forEach((v) {
        recent.add(new Recent.fromJson(v));
      });
    }   
          }
        
          Map<String, dynamic> toJson() {
            final Map<String, dynamic> data = new Map<String, dynamic>();
            if (this.categories != null) {
              data['categories'] = this.categories.map((v) => v.toJson()).toList();
            }
            if (this.topProducts != null) {
              data['topProducts'] = this.topProducts.map((v) => v.toJson()).toList();
            }
            if (this.recomanded != null) {
              data['recomanded'] = this.recomanded.map((v) => v.toJson()).toList();
            }
            if (this.recent != null) {
              data['recent'] = this.recent.map((v) => v.toJson()).toList();
            }
            
            return data;
          }
        }
        
        class Categories {
          int cateId;
          String nameInEng;
          String nameInHin;
          String details;
          String cateIconUrl;
        
          Categories(
              {this.cateId,
              this.nameInEng,
              this.nameInHin,
              this.details,
              this.cateIconUrl});
        
          Categories.fromJson(Map<String, dynamic> json) {
            cateId = json['cate_id'];
            nameInEng = json['name_in_eng'];
            nameInHin = json['name_in_hin'];
            details = json['details'];
            cateIconUrl = json['cate_icon_url'];
          }
        
          Map<String, dynamic> toJson() {
            final Map<String, dynamic> data = new Map<String, dynamic>();
            data['cate_id'] = this.cateId;
            data['name_in_eng'] = this.nameInEng;
            data['name_in_hin'] = this.nameInHin;
            data['details'] = this.details;
            data['cate_icon_url'] = this.cateIconUrl;
            return data;
          }
        }
        
        class TopProducts {
          int productId;
          String nameInEng;
          String nameInHin;
          String description;
          String imageUrl;
          int categoryId;
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
        
          TopProducts(
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
        
          TopProducts.fromJson(Map<String, dynamic> json) {
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
        
        class Recomanded {
          int productId;
          String nameInEng;
          String nameInHin;
          String description;
          String imageUrl;
          int categoryId;
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
        
          Recomanded(
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
        
          Recomanded.fromJson(Map<String, dynamic> json) {
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
        
        class Recent {
          int productId;
          String nameInEng;
          String nameInHin;
          String description;
          String imageUrl;
          int categoryId;
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
        
          Recent(
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
        
          Recent.fromJson(Map<String, dynamic> json) {
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