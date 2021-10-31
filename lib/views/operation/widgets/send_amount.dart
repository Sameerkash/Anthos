import 'package:flutter/material.dart';

import '../../../widgets/buttons.dart';
import '../../../widgets/display.text.dart';

class AmountPage extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onSend;
  final bool? isSending;
  const AmountPage({
    Key? key,
    required this.controller,
    required this.onSend,
    this.isSending = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: controller,
                    style: const TextStyle(fontSize: 60),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    cursorHeight: 40,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      hintText: '0',
                      hintStyle: TextStyle(
                        fontSize: 60,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const DisplayText(
                  text: 'Tez',
                  fontSize: 16,
                )
              ],
            ),
            Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AmountSuggestionChip(
                  label: '50',
                  onTap: () {},
                ),
                AmountSuggestionChip(
                  label: '100',
                  onTap: () {},
                ),
                AmountSuggestionChip(
                  label: '150',
                  onTap: () {},
                ),
                AmountSuggestionChip(
                  label: '500',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedDisplayTextButton(
              text: 'Send',
              onPressed: onSend,
              isLoading: isSending,
              enabled: !isSending!,
            ),
          ),
        ),
      ],
    );
  }
}

class AmountSuggestionChip extends StatelessWidget {
  final String label;
  final void Function() onTap;
  const AmountSuggestionChip({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
      child: Chip(
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
          child: DisplayText(
            text: label,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
