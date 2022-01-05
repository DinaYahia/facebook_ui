import 'package:facebook_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FacebookFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 14,
          ),
          onPressed: () {
            // do something
          },
        ),
        title: Container(
            width: double.infinity,
            child: Text('Feed',
                style: TextStyle(color: Colors.black, fontSize: 16))),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage(posts[1].userModel.imgURL),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    posts[1].userModel.name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    posts[1].whatUserDid,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(posts[1].time,
                                  style: TextStyle(
                                      color: Colors.grey[450], fontSize: 12.0))
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_control_rounded,
                          size: 30,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10, bottom: 12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: posts[1].images.map((e) {
                            return Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  e,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Image.network(e),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Container(
                                  child: ClipOval(
                                child: Material(
                                  color: Colors.lightBlue, // Button color
                                  child: InkWell(
                                    splashColor: Colors.white, // Splash color
                                    onTap: () {},
                                    child: const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: Icon(
                                          Icons.thumb_up_alt,
                                          color: Colors.white,
                                          size: 12,
                                        )),
                                  ),
                                ),
                              )),
                              Container(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: ClipOval(
                                    child: Material(
                                      color: Colors.red, // Button color
                                      child: InkWell(
                                        splashColor:
                                            Colors.white, // Splash color
                                        onTap: () {},
                                        child: const SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.white,
                                              size: 12,
                                            )),
                                      ),
                                    ),
                                  )),
                            ],
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Text('${posts[1].nofLikes}'),
                          Spacer(),
                          Text('${posts[1].nofcomments} Comments'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
