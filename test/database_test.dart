import 'package:models_and_client_logic/logic/http_client.dart';
import 'package:models_and_client_logic/utility/database.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test("database", () async {
    await Database().init();
  });
  test("internet", () async {
    var res = await HttpClient().checkInternet();
    expect(res, true);
  });
}
