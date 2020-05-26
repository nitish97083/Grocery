class FetchAddress {
  bool success;
  List<FetchAddress1> data;
  String message;

  FetchAddress({this.success, this.data, this.message});

  FetchAddress.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    if (json['data'] != null) {
      data = new List<FetchAddress1>();
      json['data'].forEach((v) {
        data.add(new FetchAddress1.fromJson(v));
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

class FetchAddress1 {
  int addressId;
  Null houseNo;
  String locality;
  Null addressLine1;
  String city;
  String state;
  String country;
  int pincode;
  String landmark;
  int userId;
  String addressType;
  String createdAt;
  String updatedAt;

  FetchAddress1(
      {this.addressId,
      this.houseNo,
      this.locality,
      this.addressLine1,
      this.city,
      this.state,
      this.country,
      this.pincode,
      this.landmark,
      this.userId,
      this.addressType,
      this.createdAt,
      this.updatedAt});

  FetchAddress1.fromJson(Map<String, dynamic> json) {
    addressId = json['address_id'];
    houseNo = json['house_no'];
    locality = json['locality'];
    addressLine1 = json['address_line1'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
    landmark = json['landmark'];
    userId = json['user_id'];
    addressType = json['address_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data1 = new Map<String, dynamic>();
    data1['address_id'] = this.addressId;
    data1['house_no'] = this.houseNo;
    data1['locality'] = this.locality;
    data1['address_line1'] = this.addressLine1;
    data1['city'] = this.city;
    data1['state'] = this.state;
    data1['country'] = this.country;
    data1['pincode'] = this.pincode;
    data1['landmark'] = this.landmark;
    data1['user_id'] = this.userId;
    data1['address_type'] = this.addressType;
    data1['created_at'] = this.createdAt;
    data1['updated_at'] = this.updatedAt;
    return data1;
  }
}
