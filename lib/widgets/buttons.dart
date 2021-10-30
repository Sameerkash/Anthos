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
      onPressed: () {},
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
  const QRCodeButton({
    Key? key,
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
        onPressed: () {},
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
  const ElevatedDisplayTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize,
    this.enabled = true,
    this.color = Colors.indigo,
    this.fontWeight,
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
            color: color,
          ),
          height: 40,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
