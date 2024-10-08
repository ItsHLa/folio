import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, this.onSaved, this.validator});
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        onSaved: onSaved,
        validator:validator,
        decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffffffff)
            ),
            borderRadius:BorderRadius.circular(16)
          ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: kThemeColor
                ),
                borderRadius:BorderRadius.circular(16)
            ),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Colors.red
                ),
                borderRadius:BorderRadius.circular(16)
            )
        ),
      ),
    );
  }
}
