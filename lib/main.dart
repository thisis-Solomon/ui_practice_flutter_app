import 'package:flutter/material.dart';
import 'package:ui_practice_flutter_app/pages/home_page.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "GoMoon",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(31, 135, 206, 235)),
      home: HomePage()
    );
  }
}
