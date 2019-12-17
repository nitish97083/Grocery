import 'dart:convert';

import 'package:radhe_radhe/home/pojo/cartValue.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPref {
  Future save(List<CartValue> cartvalue) async {
    final sharepref = await SharedPreferences.getInstance();
    sharepref.setString("cart", jsonEncode(cartvalue));
  }

  Future retrive() async {
    final sharepref = await SharedPreferences.getInstance();
    return jsonDecode(sharepref.getString("cart"));
  }

  Future remove() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("cart");
  }
}
