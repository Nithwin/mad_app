import 'package:flutter/material.dart';
import 'package:mad_app/data/notifiers.dart';
import 'package:mad_app/views/widget_tree.dart';
void main() {
  runApp(MyApp());
}

//stateless widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkThemeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(0, 150, 136, 1),
              brightness: value ? Brightness.dark : Brightness.light,
            ),
          ),
          home: MyHome(),
        );
      },
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return WidgetTree();
  }
}
