import 'package:dio/dio.dart';

final _dio = Dio();

typedef InitResult = ({bool status, String? url});

class HttpClient {
  Future<InitResult> initApp(String settingUrl) async {
    _dio.options.followRedirects = false;

    var res = await _dio.get(settingUrl);
    var loc = res.headers["location"]?.first;
    if (loc?.contains("localhost") ?? true) {
      return (status: false, url: null);
    } else {
      return (status: true, url: loc);
    }
  }

  Future<bool> checkInternet() async {
    var res = await _dio.get("http://example.com");
    if (res.data != null) {
      return true;
    }

    return false;
  }
}
