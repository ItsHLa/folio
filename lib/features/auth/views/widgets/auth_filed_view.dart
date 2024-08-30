import 'package:flutter/material.dart';

import 'auth_text_field.dart';

class AuthFieldsBody extends StatefulWidget {
  const AuthFieldsBody ({super.key});

  @override
  State<AuthFieldsBody> createState() => _AuthFieldsBodyState();
}

class _AuthFieldsBodyState extends State<AuthFieldsBody> {

  List label = ['User Name' , 'Phone Number' , 'Password'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8),
      itemCount: label.length,
      itemBuilder: (context, index) => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
                Text(label[index] , textAlign: TextAlign.start,),
              const Spacer()
            ],
          ),
          const SizedBox(height: 8,),
          const AuthTextField(),
        ],
      ),
    );
  }
}
