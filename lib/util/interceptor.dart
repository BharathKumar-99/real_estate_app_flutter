import 'package:dio/dio.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/util/preferences.dart';

import 'general.dart';

List<String> tokenApi = [Constants.updatePassword, Constants.updateAccount];

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      options.headers['authorization'] = 'Bearer $token';
    }
    // continue with the request
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    if (tokenApi.contains(options.path)) {
      return true;
    } else {
      return false;
    }
  }
}

getToken() async {
  return await StroageUtil().getString(Constants.token);
}
