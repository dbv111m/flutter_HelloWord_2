import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Second App",
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF609f93),
        ),
        body: Stack(
          children: [
            Text(
              "А куда ты хочешь попасть??",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "OpenSans",
              ),
            ),
            Center(
              child: Image(
                image: AssetImage("assets/images/cat.png"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    child: Text("Заберите меня отсюда"),
                    height: 40,
                    onPressed: () => exit(0),
                    color: Colors.blue,
                  ),
                  MaterialButton(
                    child: Text("Только вперед!"),
                    height: 40,
                    onPressed: () => {},
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
