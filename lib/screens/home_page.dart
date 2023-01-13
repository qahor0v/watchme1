import 'package:flutter/material.dart';
import 'package:watchme/screens/desktop_home.dart';
import 'package:watchme/screens/mobile_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return const DesktopHome();
        } else {
          return const MobileHome();
        }
      },
    );
  }
}
