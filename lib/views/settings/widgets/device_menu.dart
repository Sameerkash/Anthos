
import '../../../widgets/buttons.dart';
import '../../../widgets/display.text.dart';
import 'package:flutter/material.dart';

class DeviceMenu extends StatelessWidget {
  const DeviceMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 25.0, bottom: 10),
            child: DisplayText(
              text: 'Device',
              fontSize: 22,
            ),
          ),
        ),
        ElevatedDisplayTextButton(
          text: 'Change Pin',
          onPressed: () {},
        ),
        ElevatedDisplayTextButton(
          text: 'Disable Pin',
          onPressed: () {},
        )
      ],
    );
  }
}