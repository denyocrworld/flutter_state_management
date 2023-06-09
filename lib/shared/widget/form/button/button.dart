

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  const QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
