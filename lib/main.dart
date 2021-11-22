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
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons
                  .menu)), // отвечает за расположение в левой части иконки (расскрывающиий список)
          iconTheme:
              IconThemeData(color: Colors.black54), // задаем цвет для иконки
          brightness: Brightness.light, // задаем яркость AppBar
          actions: <Widget>[
            // реализация правой иконки
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                )),
          ],
        ),
        body: _buildBody(), // выносим в отдельный виджет компоновку
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(), // реализуем отдельно данный виджет
        _weatherDescription(), // реализуем отдельным виджетом описание погоды
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://res.cloudinary.com/practicaldev/image/fetch/s--4WqDwI2y--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/y2wj5i2m33ouyh749wbc.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Monday - November 22',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Partly cloudy - 7° Probability of Precipitation 2% before 19:00',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 22.0,
        ),
      ),
    ],
  );
}
