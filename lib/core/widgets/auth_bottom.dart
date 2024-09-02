import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.label, this.onPressed});
  final String label;
 final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: kThemeColor
      ),
        onPressed: onPressed,
        child: Center(child: Text(label)));
  }
}
