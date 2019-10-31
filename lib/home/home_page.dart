import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

import 'home_bloc.dart';
import 'home_screen.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DevScaffold(
      title: "Home page",
      body: HomeScreen(
        homeBloc: _homeBloc,
      ),
    );
  }
}
