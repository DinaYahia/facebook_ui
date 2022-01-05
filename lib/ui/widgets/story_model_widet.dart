import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryModelWidget extends StatelessWidget {
  StoryModel storyModel;
  StoryModelWidget(this.storyModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 100,
                      // width:double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          storyModel.imgURL,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        ),
                      ),
                      child: Text(
                        storyModel.userModel.name,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 6.0, top: 6.0),
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(storyModel.userModel.imgURL),
                          radius: 12,
                        ),
                        // backgroundImage:NetworkImage(storyModel.userModel.imgURL),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AddModelWidget extends StatelessWidget {
  StoryModel storyModel;
  AddModelWidget(this.storyModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          storyModel.userModel.imgURL,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        ),
                      ),
                      child: const Text(
                        'Add Your Story',
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 7, top: 7),
                        // color: Colors.white,
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                          child: Material(
                            color: Colors.white, // Button color
                            child: InkWell(
                              splashColor: Colors.lightBlue[50], // Splash color
                              onTap: () {},
                              child: const SizedBox(
                                  width: 22,
                                  height: 22,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.blueAccent,
                                    size: 14,
                                  )),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
