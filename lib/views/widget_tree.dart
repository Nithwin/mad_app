import 'package:flutter/material.dart';
import 'package:mad_app/data/notifiers.dart';
import 'package:mad_app/views/pages/home_page.dart';
import 'package:mad_app/views/pages/profile_page.dart';
import 'package:mad_app/views/widgets/navbar_widget.dart';

class WidgetTree extends StatefulWidget {
  WidgetTree({Key? key}) : super(key: key);

  @override
  _WidgetTreeState createState() => _WidgetTreeState();
}

List<Widget> pages = [HomePage(), Profile()];

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkThemeNotifier.value = !isDarkThemeNotifier.value;
            },
            icon: Icon(
              isDarkThemeNotifier.value ? Icons.dark_mode : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
