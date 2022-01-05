import 'dart:developer';
import 'package:facebook_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class PostsModelWidget extends StatelessWidget {
  PostModel postModel;
  PostsModelWidget(this.postModel);

  likeFunction() {
    log('you have just pressed on like button');
  }

  commentFunction() {
    log('you have just pressed on comment button');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                backgroundImage: NetworkImage(postModel.userModel.imgURL),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                // height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          postModel.userModel.name,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          postModel.whatUserDid,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(postModel.time,
                        style:
                            TextStyle(color: Colors.grey[450], fontSize: 12.0))
                  ],
                ),
              ),
              const Spacer(),
              Icon(
                Icons.keyboard_control_rounded,
                size: 30,
                color: Colors.grey[400],
              )
            ],
          ),
          Container(
            height: 250,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, bottom: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                postModel.imgURL,
                fit: BoxFit.cover,
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
                    // Stack(
                    //   children: <Widget>[
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
                              splashColor: Colors.white, // Splash color
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
                    //   ],
                    // ),
                  ],
                )),
                const SizedBox(
                  width: 20,
                ),
                Text('${postModel.nofLikes}'),
                const Spacer(),
                Text('${postModel.nofcomments} Comments'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: const Divider(
              color: Colors.grey,
              height: 0.5,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 0, bottom: 5),
            // color: Colors.amber,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            likeFunction();
                          },
                          icon: const Icon(
                            Icons.thumb_up_outlined,
                            size: 20,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Like',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0))
                    ],
                  )),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            commentFunction();
                          },
                          icon:
                              const Icon(Icons.chat_bubble_outline, size: 20)),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Comment',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0))
                    ],
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
