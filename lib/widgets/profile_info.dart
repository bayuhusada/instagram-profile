import 'package:flutter/material.dart';


class ProfileInfo extends StatelessWidget {

const ProfileInfo (this.name, this.value, {super.key});

final String name;
final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        Text(name)
      ],
    );
  }
}