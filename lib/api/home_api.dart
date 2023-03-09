import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/model/categories_model.dart';
import 'package:real_estate_app/model/contact_us_model.dart';
import 'package:real_estate_app/model/properties_list.dart';
import 'package:real_estate_app/util/api_request.dart';

class HomeApi {
  static final DioClient _dio = DioClient();
  static Dio dio = _dio.dio;

  static getProperties() async {
    try {
      var response = await dio.get(
        Constants.category,
      );
      List jsonResponse = response.data;
      return jsonResponse.map((job) => CategoriesModel.fromJson(job)).toList();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getFeatured() async {
    try {
      var formData = FormData.fromMap({
        Constants.reqFeatured: Constants.featured,
      });
      var response = await dio.get(Constants.property, data: formData);
      var resData = PropertiesList.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getRent() async {
    try {
      var response = await dio.get(Constants.rentProperty);
      var resData = PropertiesList.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static getSale() async {
    try {
      var response = await dio.get(Constants.saleProperty);
      var resData = PropertiesList.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static contactUs(String name, String phone, String enquiry, String email,
      String msg) async {
    try {
      var formData = FormData.fromMap({
        Constants.name: name,
        Constants.email: email,
        Constants.phone: phone,
        Constants.address: enquiry,
        Constants.subject: enquiry,
        Constants.content: msg,
      });
      var response = await dio.post(Constants.contact, data: formData);
      var resData = ContactUsModel.fromJson(response.data);
      return resData;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
