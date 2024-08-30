import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: kThemeColor
      ),
        onPressed: (){},
        child: Center(child: Text(label)));
  }
}
