import '../../provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/app_menu.dart';
import 'widgets/device_menu.dart';
import 'widgets/network_menu.dart';
import 'package:flutter/material.dart';

import '../../widgets/display.text.dart';

class SettingsView extends HookWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var home = useProvider(homeProvider);
    var homeNotifier = useProvider(homeProvider.notifier);
    var network = home.maybeMap(
      data: (data) => data.userAccountLocal?.prefferedNetwork,
      orElse: () => null,
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const DisplayText(
          text: 'Settings',
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 80,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(),
            NetworkMenu(
              network: network!,
              onChanged: (val) {
                homeNotifier.changeNetwork(network: val!);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const DeviceMenu(),
            const SizedBox(
              height: 25,
            ),
            const AppMenu(),
          ],
        ),
      ),
    );
  }
}
