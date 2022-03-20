import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => InitState();
}

class InitState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
   return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

}
