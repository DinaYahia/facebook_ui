import 'package:facebook_ui/data/dummy_data.dart';
import 'package:facebook_ui/ui/widgets/post_model_widet.dart';
import 'package:facebook_ui/ui/widgets/story_model_widet.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FacebookUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const TextField(
              cursorRadius: Radius.circular(5.0),
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                // fillColor: Colors.grey,
                fillColor: Color(0xfff3f4f7),
                // suffixIcon: Icon(Icons.camera_alt)
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.chat_bubble,
              color: Colors.blue,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  children: const [
                    Text(
                      'Stories',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'Show Archive',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.black, size: 12.0)
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    AddModelWidget(stories[0]),
                    Row(
                      children: stories.map((e) {
                        return Container(
                          child: Row(children: [StoryModelWidget(e)]),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: posts.map((e) {
                    return PostsModelWidget(e);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
          child: ClipOval(
        child: Material(
          color: const Color(0xff3c5a99),
          child: InkWell(
            // splashColor: Colors.white, // Splash color
            onTap: () {},
            child: const SizedBox(
                width: 50,
                height: 50,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.video_label),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Colors.lightBlue[800],
        unselectedItemColor: Colors.grey[350],
      ),
    );
  }
}
