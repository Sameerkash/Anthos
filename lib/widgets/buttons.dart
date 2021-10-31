import 'package:flutter/material.dart';

class TransactionActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData icon;

  const TransactionActionButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 6),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class QRCodeButton extends StatelessWidget {
  final void Function() onPressed;
  const QRCodeButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.black,
      child: IconButton(
        color: Colors.white,
        padding: const EdgeInsets.all(5),
        onPressed: onPressed,
        icon: const Icon(
          Icons.qr_code_2,
          size: 20,
        ),
      ),
    );
  }
}

class ElevatedDisplayTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool? enabled;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final bool? isLoading;

  const ElevatedDisplayTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.enabled = true,
    this.color = Colors.indigo,
    this.fontSize,
    this.fontWeight,
    this.textColor = Colors.white,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: enabled! ? onPressed : null,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: enabled! ? color : Colors.grey,
          ),
          height: 40,
          alignment: Alignment.center,
          child: isLoading!
              ? const CircularProgressIndicator()
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }
}
