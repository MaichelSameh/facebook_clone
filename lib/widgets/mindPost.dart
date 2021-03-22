import 'package:flutter/material.dart';

import '../models/models.dart';

Widget mindPost(BuildContext context) {
  Size _size = new Size(context);
  return Container(
    padding: EdgeInsets.only(
      top: _size.height(10),
    ),
    color: Theme.of(context).primaryColor,
    child: Column(
      children: [
        _buildPostQuestion(_size, context),
        Divider(height: 0),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: _size.height(10),
          ),
          child: Row(
            children: [
              _buildSingleSuggestion(
                _size,
                Icon(
                  Icons.videocam,
                  color: Color.fromRGBO(250, 62, 61, 1),
                ),
                "Live",
              ),
              _buildSingleSuggestion(
                  _size,
                  Icon(
                    Icons.photo_library,
                    color: Color.fromRGBO(137, 190, 76, 1),
                  ),
                  "Photo",
                  border: true,
                  context: context),
              _buildSingleSuggestion(
                _size,
                Icon(
                  Icons.video_call,
                  color: Color.fromRGBO(146, 96, 245, 1),
                ),
                "Room",
              ),
            ],
          ),
        )
      ],
    ),
  );
}

GestureDetector _buildSingleSuggestion(Size _size, Icon icon, String text,
    {bool border = false, BuildContext context}) {
  return GestureDetector(
    child: Container(
      width: _size.screenWidth() / 3,
      decoration: BoxDecoration(
        border: border
            ? Border.symmetric(
                vertical: BorderSide(
                  color: Theme.of(context).dividerColor,
                ),
              )
            : Border(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            text,
            style: TextStyle(
              color: Color.fromRGBO(140, 141, 145, 1),
            ),
          ),
        ],
      ),
    ),
  );
}

Container _buildPostQuestion(Size _size, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      bottom: _size.height(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: _size.height(15),
          backgroundColor:
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
          foregroundImage: NetworkImage(User.imagePath),
        ),
        GestureDetector(
          child: Container(
            alignment: Alignment.centerLeft,
            width: _size.screenWidth() - 100,
            height: _size.height(25),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    Theme.of(context).textTheme.button.color.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(
                _size.height(15),
              ),
            ),
            child: Text(
              "What's on your mind?",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ],
    ),
  );
}
