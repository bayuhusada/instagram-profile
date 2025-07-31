import 'package:flutter/material.dart';


class StoryHighlight extends StatelessWidget {
 StoryHighlight(this.title);

final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80 / 2),
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/400/300'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 3),
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
          SizedBox(height: 3,),
          Text(title)
        ],
        
      ),
    );
  }
}


Widget StoryHighlightAdd() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Baru',
          style: TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}