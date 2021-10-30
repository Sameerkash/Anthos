
import '../../../widgets/buttons.dart';
import '../../../widgets/display.text.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({
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
              text: 'App',
              fontSize: 22,
            ),
          ),
        ),
        ElevatedDisplayTextButton(
          text: 'About',
          onPressed: () {},
        ),
        ElevatedDisplayTextButton(
          text: 'Reset Anthos',
          onPressed: () {},
        )
      ],
    );
  }
}