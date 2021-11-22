import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: TextStyle(color: Colors.black87,),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)), // отвечает за расположение в левой части иконки (расскрывающиий список)
          iconTheme: IconThemeData(color: Colors.black54), // задаем цвет для иконки
          brightness: Brightness.light, // задаем яркость AppBar

        ),
        body: null,
      ),
    );
  }
}
