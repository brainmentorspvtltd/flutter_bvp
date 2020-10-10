import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  String message = "Hi Flutter";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size; // Device Size
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.email),
          Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Icon(Icons.phone))
        ],
        leading: Icon(
          Icons.apps,
          color: Colors.black,
        ),
        title: Text(
          'My App 2020',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        height: media.height / 2,
        width: media.width / 2,
        // transform: Matrix4.rotationZ(pi / 4),
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [
            Colors.redAccent,
            Colors.greenAccent,
            Colors.blueAccent,
            Colors.amberAccent,
            Colors.black,
            Colors.cyan
          ])

          /* RadialGradient(
              //stops: [0.2, 0.1],
              colors: [Colors.redAccent, Colors.greenAccent, Colors.blueAccent]) */
          /*LinearGradient(colors: [
            Colors.redAccent,
            Colors.greenAccent,
            Colors.blueAccent
          ]) */
          ,
          color: Colors.greenAccent,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(20)),

          boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 10)],
          /*image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/7e/55/84/7e558432c10a4c64fac6b09deda5a981.jpg'),
            )*/

          //shape: BoxShape.circle
        ),
        // margin: EdgeInsets.only(top: media.height / 5, left: media.width / 2),
        //padding: EdgeInsets.all(30),
//        child: Image(
//          image: AssetImage('images/download.jpeg'),
//        )

        //Image.network(
        //'https://i.pinimg.com/originals/7e/55/84/7e558432c10a4c64fac6b09deda5a981.jpg')

        child: Text(
          message,
          style: TextStyle(fontSize: 30),
        ),
        //color: Colors.tealAccent,
      ),
    );
  }
}
