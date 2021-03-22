import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import '../providers/providers.dart';

import 'widgets.dart';

Widget buildStatusBar(BuildContext context) {
  Size _size = new Size(context);

  return ChangeNotifierProvider<StoryProvider>(
    create: (ctx) => StoryProvider(),
    builder: (ctx, child) => Container(
      height: _size.height(200),
      margin: EdgeInsets.symmetric(vertical: _size.height(5)),
      padding: EdgeInsets.symmetric(vertical: _size.height(5)),
      color: Theme.of(context).primaryColor,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ctx.watch<StoryProvider>().storyLength,
          itemBuilder: (ctx, index) => buildSingleStory(context),
        ),
      ),
    ),
  );
}
