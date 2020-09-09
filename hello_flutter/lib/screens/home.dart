import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          greetings(),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }

  String greetings() {
    String greeting = "Hello, Joas!";
    DateTime time = new DateTime.now();
    int hour = time.hour;
    int minute = time.minute;
    String minuteToString = minute < 10 ? "0$minute" : minute.toString();

    if (hour < 6) {
      greeting = 'Good night, Joas!';
    } else if (hour < 12) {
      greeting = 'Good morning, Joas!';
    } else if (hour < 18) {
      greeting = 'Good afternoon, Joas!';
    } else {
      greeting = 'Good evening, Joas!';
    }
    return "$greeting \n\n It is ${hour.toString() + ":" + minuteToString}.";
  }
}
