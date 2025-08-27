import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorage extends GetxService {
  // <===========  initialize Local  Storage  ==========>
  final GetStorage _box = GetStorage();

  Future<void> initStorage() async {
    await GetStorage.init();
  }

  // <===========  Write data from storage  ==========>
  Future<void> write(String key, dynamic value) async {
    await _box.write(key, value);
  }

  // <===========  Read data from storage  ==========>
  // ignore: body_might_complete_normally_nullable
  D? read<D>(String key) {
    return _box.read<D>(key);
  }

  // <===========  Delet from storage  ==========>
  Future<void> remove(String key) async {
    await _box.remove(key);
  }

  // <===========  Clear All data from storage  ==========>
  Future<void> clear() async {
    await _box.erase();
  }
}
