import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';
import '../providers/providers.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          mindPost(context),
          Consumer<MaterialAppProvider>(
            builder: (ctx, provider, child) => Switch.adaptive(
              value: ctx.watch<MaterialAppProvider>().theme,
              onChanged: (value) =>
                  ctx.read<MaterialAppProvider>().updateThemeMode(
                        value ? ThemeMode.dark : ThemeMode.light,
                      ),
            ),
          ),
          buildStatusBar(context),
        ],
      ),
    );
  }
}
