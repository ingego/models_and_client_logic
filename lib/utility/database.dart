import 'package:hive/hive.dart';

String _boxName = "start_box";

final class Database {
  late Box<String> _box;
  Future init() async {
    Hive.init("./hive/");
    _box = await Hive.openBox<String>(_boxName);
  }

  String get getUrl => _box.getAt(0) ?? "";

  String putUrl(String url) {
    _box.putAt(0, url);
    return _box.getAt(0) ?? "";
  }
}
