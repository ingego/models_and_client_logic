//{"advertiser_id":"1abe53d5-3acd-488d-be80-70b47819e3da","app_package":"com.musclesbuilder.wihvcv","appsflyer":{"af_status":"Non-organic","appsflyer_id":"1663406737599-8411485663157844002","campaign":"aff-14544-24073_vk_1_ru","media_source":"mail.ru_int"}}
import 'dart:convert';

import 'package:test/scaffolding.dart';

String initApp(String advertiserId, String appPackage, String afStatus,
    String appsflyerId, String campaign, String mediaSource) {
  var json = {
    "advertiser_id": advertiserId,
    "app_package": appPackage,
    "appsflyer": {
      "af_status": afStatus,
      "appsflyer_id": appsflyerId,
      "campaign": campaign,
      "media_source": mediaSource
    }
  };
  var data = jsonEncode(json);
  // ignore: unnecessary_string_interpolations

  var bytes = base64Encode(utf8.encode(data));
  // var base = base64Decode(jsonEncode(json));
  return bytes;
}

void main() {
  test("init app", () {
    var init = initApp("advertiserId", "appPackage", "afStatus", "appsflyerId",
        "campaign", "mediaSource");
    print(init);
  });
}
