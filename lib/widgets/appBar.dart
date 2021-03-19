import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

AppBar appBar(BuildContext ctx) {
  Size _size = new Size(ctx);
  return AppBar(
    backgroundColor: Theme.of(ctx).appBarTheme.color,
    actionsIconTheme: Theme.of(ctx).appBarTheme.actionsIconTheme,
    title: Text(
      "facebook",
      style: Theme.of(ctx).appBarTheme.textTheme.bodyText1,
    ),
    actions: [
      CircleAvatar(
        backgroundColor: Color.fromRGBO(57, 58, 60, 1),
        child: IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
      GestureDetector(
        child: CircleAvatar(
          backgroundColor: Color.fromRGBO(57, 58, 60, 1),
          child: SvgPicture.asset(
            MyIcons.messenger_icon,
            height: _size.width(25),
            width: _size.width(25),
            color: Colors.white,
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(right: 10))
    ],
  );
}
