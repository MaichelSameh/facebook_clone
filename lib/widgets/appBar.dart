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
        backgroundColor: Theme.of(ctx).hoverColor,
        child: IconButton(
          splashColor: Colors.transparent,
          icon: Icon(
            Icons.search,
            color: Theme.of(ctx).appBarTheme.actionsIconTheme.color,
          ),
          onPressed: () {},
        ),
      ),
      GestureDetector(
        child: CircleAvatar(
          backgroundColor: Theme.of(ctx).hoverColor,
          child: SvgPicture.asset(
            MyIcons.messenger_icon,
            height: _size.width(25),
            width: _size.width(25),
            color: Theme.of(ctx).appBarTheme.actionsIconTheme.color,
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(right: 10))
    ],
  );
}
