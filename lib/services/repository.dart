import 'dart:convert';

import '../models/operation/operation.dart';
import '../models/tezos/tezos.dart';

import '../models/account/account.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:http/http.dart' as http;
import 'package:sembast/sembast_io.dart';

class Repository {
  final Map<String, String> networks = {
    'Mainnet': 'api.tzkt.io',
    'Granada': 'api.granadanet.tzkt.io',
  };

  Map<String, String> networksChains = {
    'Mainnet': 'https://mainnet.smartpy.io',
    'Granada': 'https://granadanet.api.tez.ie',
  };
  final storage = const FlutterSecureStorage();

  sembast.Database? _db;

  /// File path to a file in the current directory
  String dbName = 'foodmagic.db';

  /// dbFactory instance
  sembast.DatabaseFactory dbFactory = databaseFactoryIo;

  // Store
  final _store = sembast.stringMapStoreFactory.store('common_store');

  static const userAccount = 'USER_ACCOUNT';

  Future<sembast.Database> getDb() async {
    if (_db == null) {
      var path = (await getApplicationSupportDirectory()).path + "/" + dbName;
      _db = await dbFactory.openDatabase(path);
    }
    return _db!;
  }

  Future<UserAccountLocal?> getUserAccountLocal() async {
    final res = await _store.record(userAccount).get(await getDb());
    if (res != null) {
      return UserAccountLocal.fromJson(res);
    }

    return null;
  }

  Future<void> setUserAccountLocal(UserAccountLocal userAccountLocal) async {
    await _store
        .record(userAccount)
        .put(await getDb(), userAccountLocal.toJson());
  }

  Future<void> deleteAccount() async {
    await _store.record(userAccount).delete(await getDb());
  }

  Future<Account?> getAccount({
    required String network,
    required String address,
  }) async {
    try {
      var url = Uri.https(
          networks[network]!, '/v1/accounts/$address', {'metadata': 'true'});
      final res = await http.get(url);
      return Account.fromJson(jsonDecode(res.body));
    } catch (e) {
      return null;
    }
  }

  Future<List<Operation>> getOperations(
      {required String network, required String address}) async {
    try {
      var url =
          Uri.https(networks[network]!, '/v1/accounts/$address/operations');
      final res = await http.get(url);
      List<Operation> operations = [];
      var json = jsonDecode(res.body);
      for (var i = 0; i < json.length; i++) {
        operations.add(Operation.fromJson(json[i]));
      }
      return operations;
      
    } catch (e) {
      return [];
    }
  }

  Future<Tezos?> getTezosMarketPrice() async {
    try {
      final url = Uri.https('api.coingecko.com', '/api/v3/coins/markets', {
        'vs_currency': 'usd',
        'ids': 'tezos',
      });
      final res = await http.get(url);
      var jsonDecoded = jsonDecode(res.body)[0];
      return Tezos.fromJson(jsonDecoded);
    } catch (e) {
      return null;
    }
  }
}
