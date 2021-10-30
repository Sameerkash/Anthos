import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum Keys {
  accountAddress,
  accountPrivateKey,
  accountSeedPhrase,
  userAccount,
}

Map<String, String> networks = {
  'Mainnet': 'api.tzkt.io',
  'Granada': 'api.granada.tzkt.io',
  'Hangzohounet': 'api.hangzhou.tzkt.io',
};

class Repository {
  final storage = const FlutterSecureStorage();

  Future<String?> getAccountAddress() async {
    return await storage.read(key: Keys.accountAddress.toString());
  }

  Future<void> setAccountCredentails(
      {required String address, required String privateKey}) async {
    await storage.write(key: Keys.accountAddress.toString(), value: address);
    await storage.write(
        key: Keys.accountPrivateKey.toString(), value: privateKey);
  }

  Future<String?> getAccountPrivateKey() async {
    return await storage.read(key: Keys.accountPrivateKey.toString());
  }

  Future<String?> getAccountSeedPhrase() async {
    return await storage.read(key: Keys.accountSeedPhrase.toString());
  }
}
