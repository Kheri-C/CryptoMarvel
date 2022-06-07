import 'package:cryto/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Marvel APP"),
      ),
      body: MarvelApp(),
    ),
  )
);

class HelloWorldStateFulWidget extends StatefulWidget {
  final String texto;
  HelloWorldStateFulWidget({required this.texto});
  @override
  State<HelloWorldStateFulWidget> createState() => _HelloWorldStateFulWidgetState();
}

class _HelloWorldStateFulWidgetState extends State<HelloWorldStateFulWidget> {

  Color _color = Colors.black12;

  void generaNuevoColor(){
    var random = Random();
    setState((){
      _color = Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: generaNuevoColor,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(_color)
        ),
          child: Center(
            child: Text(
              widget.texto,
              style: TextStyle(fontSize: 50.00, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
      ),
    );
  }
}


class HelloThereSW extends StatelessWidget {
  const HelloThereSW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Hello from ObiWan");
  }
}
