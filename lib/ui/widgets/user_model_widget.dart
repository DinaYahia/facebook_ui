import 'package:facebook_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class UserModelWidget extends StatelessWidget {
  UserModel userModel;
  UserModelWidget(this.userModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(userModel.imgURL),
          ),
          Text(
            userModel.name,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
