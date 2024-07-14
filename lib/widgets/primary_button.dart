import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text = "",
    this.backgroundColor,
    this.onPressed,
  });

  final String text;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: _customButtonStyle(backgroundColor),
        onPressed: onPressed,
        child: Text(
          text,
        ));
  }
}

_customButtonStyle(Color? backgroundColor, {BorderSide? borderSide}) {
  return ElevatedButton.styleFrom(
    side: borderSide,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)),
    backgroundColor: backgroundColor,
    minimumSize: const Size.fromHeight(52),
  );
}