import 'package:dio/dio.dart';

// List<String> tokenApi = [
//   SETTING_URL,
//   GET_ALL_DATA_URL,
//   GET_SUB_CATEGORY_URL,
//   GET_SECTION_URL,
//   FAQ_URL,
//   REGISTER_URL,
//   GET_PRODUCTS_URL,
//   GET_SELLER_DATA_URL,
//   LOGIN_URL,
//   GET_LOCATIONS_URL,
//   GET_ADDRESS_URL,
//   GET_ADDRESS_URL,
//   USER_DATA_URL,
//   GET_RAZORPAY_ORDER_URL,
//   CART_URL
// ];

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      //  options.headers['authorization'] = 'Bearer ${JwtToken.hs256()}';
    }
    // continue with the request
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    // if (tokenApi.contains(options.path)) {
    //   return true;
    // } else {
    //   return false;
    // }
    return true;
  }
}
/*ToDo
add token
*/
