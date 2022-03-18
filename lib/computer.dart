
import 'package:flutter/material.dart';
import 'package:maintenances/header_drawer.dart';

class Computer extends StatefulWidget {
  const Computer({Key? key}) : super(key: key);

  @override
  State<Computer> createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:
          [
            Container(
              height: 200,
              width: double.infinity,
              child: Text(''),
              decoration: BoxDecoration(
                color:Color(0xff022C43)
              ),
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:10),
                height: 200,
                width: 200,
                child: Text(''),
                decoration: BoxDecoration(
                    color:Color(0xff00648A),
                ),
              ),
            ],
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top:90,right: 300),
                  height: 200,
                  width: 200,
                  child: Text(''),
                  decoration: BoxDecoration(
                      color:Color(0xff26ADD9),
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(20)),

                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20,left: 20,top:50),
                  height: 700,
                  width: double.infinity,
                  child: Text(''),
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),

    ),
                ),
              ],
            ),
          ],

        ),

      ),
    );
  }
}
