import 'package:app_conversor/app/dark_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/views/home_view.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme(),
      home: const HomeView(),
    );
  }
}
