import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home.dart';
import 'providers/providers.dart';
import 'models/models.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MaterialAppProvider>(
      create: (ctx) => MaterialAppProvider(),
      builder: (ctx, child) => MaterialApp(
        home: HomeScreen(),
        themeMode: ctx.watch<MaterialAppProvider>().themeMode,
        darkTheme: darkTheme,
        theme: lightTheme,
      ),
    );
  }
}
