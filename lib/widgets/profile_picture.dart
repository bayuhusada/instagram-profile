import 'package:flutter/material.dart';


class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.amber],
            ),
            borderRadius: BorderRadius.circular(150 / 2),
          ),
        ),
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://picsum.photos/200/300',
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white, width: 3),
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(150 / 2),
          ),
        ),
      ],
    );
  }
}
