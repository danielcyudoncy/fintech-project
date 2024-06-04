import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _nickname = await secureStorage.getString('ff_nickname') ?? _nickname;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_current') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_current') ?? '{}';
          _current =
              AddressStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_cart') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_cart') ?? '{}';
          _cart = CartStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _clicked = await secureStorage.getBool('ff_clicked') ?? _clicked;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _nickname = '';
  String get nickname => _nickname;
  set nickname(String value) {
    _nickname = value;
    secureStorage.setString('ff_nickname', value);
  }

  void deleteNickname() {
    secureStorage.delete(key: 'ff_nickname');
  }

  AddressStruct _current = AddressStruct();
  AddressStruct get current => _current;
  set current(AddressStruct value) {
    _current = value;
    secureStorage.setString('ff_current', value.serialize());
  }

  void deleteCurrent() {
    secureStorage.delete(key: 'ff_current');
  }

  void updateCurrentStruct(Function(AddressStruct) updateFn) {
    updateFn(_current);
    secureStorage.setString('ff_current', _current.serialize());
  }

  CartStruct _cart = CartStruct();
  CartStruct get cart => _cart;
  set cart(CartStruct value) {
    _cart = value;
    secureStorage.setString('ff_cart', value.serialize());
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_cart');
  }

  void updateCartStruct(Function(CartStruct) updateFn) {
    updateFn(_cart);
    secureStorage.setString('ff_cart', _cart.serialize());
  }

  bool _clicked = false;
  bool get clicked => _clicked;
  set clicked(bool value) {
    _clicked = value;
    secureStorage.setBool('ff_clicked', value);
  }

  void deleteClicked() {
    secureStorage.delete(key: 'ff_clicked');
  }

  bool _ishowing = false;
  bool get ishowing => _ishowing;
  set ishowing(bool value) {
    _ishowing = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
