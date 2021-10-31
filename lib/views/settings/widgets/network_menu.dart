import '../../../widgets/display.text.dart';
import 'package:flutter/material.dart';

class NetworkMenu extends StatelessWidget {
  const NetworkMenu({
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
              text: 'Network',
              fontSize: 22,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigo,
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DropdownButton<String>(
            value: 'Granada',
            style: const TextStyle(color: Colors.white),
            items: <String>['Granada', 'Mainnet']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: DisplayText(
                  text: value,
                  color: Colors.white,
                ),
              );
            }).toList(),
            hint: const Text(
              "Network",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
