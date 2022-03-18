import 'package:flutter/material.dart';

class Who extends StatefulWidget {
  const Who({Key? key}) : super(key: key);

  @override
  State<Who> createState() => _WhoState();
}

class _WhoState extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context,'/');
        },icon:Icon(Icons.arrow_back_rounded,color: Color(0xff022C43),)),
      ),
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(50),
            child:  Image.asset('assets/image/caps2.png',width: 500, height: 500),
          ),
          Container(
            margin: EdgeInsets.only(top:100,right: 150),
            child:  Image.asset('assets/image/who.png',width: 100, height: 100),
          ),
          Container(
            margin: EdgeInsets.only(top:220,right: 180),
            child:  Text('من نحن',style: TextStyle(fontFamily:'Cairo',fontSize: 20,color: Color(0xff022C43),)),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(right: 100,left: 100),
            child:  Text('ان مركز تقنية المعلومات متخصص في تطوير وتقديم الخدمات الالكترونية للمواطنين والموارد '
                'البشرية العاملة في الممؤسسات الحكومية',textAlign:TextAlign.justify,style: TextStyle(fontFamily:'Cairo',fontSize: 18,color: Color(0xff022C43),),),
          ),

        ],

      ),

    );
  }
}
