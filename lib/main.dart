import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './models/NotesOperation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'Noted',
        theme: ThemeData(
          // This is the theme of your application.
        ),
        home: HomeScreen(),
      ),
    );
  }
  }