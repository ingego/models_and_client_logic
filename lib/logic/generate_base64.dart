import 'dart:convert';

String generateBase64(String advertiserId, String appPackage, String afStatus,
    String appsflyerId, String campaign, String mediaSource) {
  var json = {
    "advertiser_id": advertiserId,
    "app_package": appPackage,
    "appsflyer": {
      "af_status": afStatus,
      "appsflyer_id": appsflyerId,
      "campaign": campaign,
      "media_source": mediaSource,
    },
    "firebase": {"fcm": "<FCM_HERE>"}
  };
  var data = jsonEncode(json);
  // ignore: unnecessary_string_interpolations

  var bytes = base64Encode(utf8.encode(data));
  // var base = base64Decode(jsonEncode(json));
  return bytes;
}
