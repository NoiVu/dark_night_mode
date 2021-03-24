import 'package:dark_night_mode/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          child: Column(
            children: [
              FlatButton(
                  onPressed: () => _themeChanger.setThemeData(ThemeData.dark()),
                  child: Text('Dark')),
              FlatButton(
                  onPressed: () => _themeChanger.setThemeData(ThemeData.light()),
                  child: Text('Light'))
            ],
          ),
        ));
  }
}
