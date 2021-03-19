import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  static String _name = "Maichel Sameh";
  static String _imagePath =
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/woman-praying-in-a-dark-place-royalty-free-image-543574284-1549494908.jpg";

  static String get name => _name;
  static String get imagePath => _imagePath;
}
