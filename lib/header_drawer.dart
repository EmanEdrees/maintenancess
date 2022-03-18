
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff022C43),
      width: double.infinity,
      height: 1000,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10,top:70),
               child: Image.asset('assets/image/itlogo.png',width: 55, height: 55),
              ),
              Container(
                margin: EdgeInsets.only(right: 5,top:70),
                child: Text('قسم تقنية المعلومات',style: TextStyle(fontFamily: 'Cairo',fontSize: 18,color:Colors.white)),
              ),

            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context,'/who');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10,top:40),
                  child: Image.asset('assets/image/who.png',width: 40, height: 40),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,top:45),
                  child: Text('من نحن',style: TextStyle(fontFamily: 'Cairo',fontSize: 15 ,color:Colors.white)),
                ),

              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context,'/concat');

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10,top:40),
                  child: Image.asset('assets/image/concat.png',width: 40, height: 40),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,top:45),
                  child: Text('اتصل بنا',style: TextStyle(fontFamily: 'Cairo',fontSize: 15 ,color:Colors.white)),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
