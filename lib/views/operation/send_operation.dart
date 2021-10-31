import '../../provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/send_amount.dart';
import '../../widgets/buttons.dart';
import '../../widgets/display.text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SendOpertation extends HookWidget {
  const SendOpertation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _addressController = useTextEditingController();
    final amountController = useTextEditingController();
    final pageController = usePageController();
    final currentIndex = useState(0);

    final home = useProvider(homeProvider.notifier);
    final h = useProvider(homeProvider)
        .maybeMap(orElse: () => null, data: (data) => data);

    void onPageChanged(int index) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );

      currentIndex.value = index;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Send XTZ'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          AddressPage(
            addressController: _addressController,
            onNext: () {
              if (_addressController.text.isNotEmpty) {
                onPageChanged(currentIndex.value + 1);
              }
            },
          ),
          AmountPage(
            isSending: h?.isSending ?? false,
            controller: amountController,
            onSend: () async {
              if (_addressController.text.isNotEmpty &&
                  amountController.text.isNotEmpty) {
                await home.sendTransaction(
                  ammount: 1.0,
                  account: 'tz1WeU9Q6r5AyLfaDajKVmGjuH8nmnUYbM8u',
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Sent!'),
                    duration: const Duration(seconds: 12),
                    elevation: 3,
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class AddressPage extends StatelessWidget {
  const AddressPage({
    Key? key,
    required this.addressController,
    required this.onNext,
  }) : super(key: key);

  final TextEditingController addressController;
  final void Function() onNext;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: InputField(
                  labelText: 'Address',
                  controller: addressController,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: DisplayText(
                  text: 'Recent Addresses',
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedDisplayTextButton(
              text: 'Next',
              onPressed: onNext,
            ),
          ),
        ),
      ],
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
