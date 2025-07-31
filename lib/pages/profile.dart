import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/profile_info.dart';
import 'package:instagram_ui/widgets/profile_picture.dart';
import 'package:instagram_ui/widgets/story_highlights.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Icon(Icons.lock),
            Text('username.e__'),
            Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Text("@", style: TextStyle(fontSize: 25)),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileInfo('Post', '999'),
                      ProfileInfo('Followers', '999'),
                      ProfileInfo('Followings', '999'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
            child: Text(
              '@Username.e__',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
            child: RichText(
              text: TextSpan(
                text: "Hai, i'm Mobile Developer using flutter",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "#Flutter",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.rotate(
                  angle: -0.5,
                  child: Icon(Icons.link, color: Colors.blue),
                ),
                SizedBox(width: 8),
                Text('Link goes here', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Share Profile',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: const EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryHighlightAdd(),
                  StoryHighlight('Highlight 1'),
                  StoryHighlight('Highlight 2'),
                  StoryHighlight('Highlight 3'),
                  StoryHighlight('Highlight 4'),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

