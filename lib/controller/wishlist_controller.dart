import 'dart:convert';

import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/util/config.dart';
import 'package:real_estate_app/util/preferences.dart';

import '../model/properties_list.dart';

class WishlistController extends GetxController {
  List<Data>? wishlist = [];
  @override
  void onInit() {
    getWishlist();
    update();
    super.onInit();
  }

  getWishlist() async {
    wishlist?.clear();
    //StroageUtil().remove(Constants.wishlist);
    bool isexit = await StroageUtil().contains(Constants.wishlist);
    if (isexit) {
      String data = await StroageUtil().getString(Constants.wishlist);
      wishlist = decodedata(data);
    }
    update();
  }

  addWishlist(Data newEntry) async {
    List<Data>? toRemove = [];
    if (wishlist!.isEmpty) {
      wishlist?.add(newEntry);
    } else {
      for (var element in wishlist!) {
        if (element.id == newEntry.id) {
          toRemove.add(element);
        } else {
          wishlist?.add(newEntry);
        }
      }
    }
    wishlist?.removeWhere((e) => toRemove.contains(e));
    var studentsmap1 = encode(wishlist!);
    await StroageUtil().saveString(Constants.wishlist, studentsmap1);
    getWishlist();
    update();
  }

  static dynamic getListMap(List<Data> items) {
    if (items == null) {
      return null;
    }
    List<String> list = [];
    for (var element in items) {
      list.add(element.toJson().toString());
    }
    print(list);
    return list;
  }

  String encode(List<Data> data) => json.encode(
        data.map<Map<String, dynamic>>((music) => music.toJson()).toList(),
      );

  List<Data> decodedata(String data) => (json.decode(data) as List<dynamic>)
      .map<Data>((item) => Data.fromJson(item))
      .toList();
}
