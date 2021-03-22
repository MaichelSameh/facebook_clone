import 'package:flutter/material.dart';

class StoryProvider extends ChangeNotifier {
  int _storyLength = 0;

  int get storyLength => _storyLength;
}
