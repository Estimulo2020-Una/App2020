import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoAula extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: Icon(
          Icons.dehaze,
        )),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              padding: EdgeInsets.all(0),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 255,
                    height: 100,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 800,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    child: Image.asset(
                        "image/ti.png",
                        fit:BoxFit.fitHeight ,
                    ),
                  ),
                  Text("Modulo Tecnologia\nE inovaçao",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 30
                  ),),
                  RaisedButton(
                    onPressed: null,
                    child: Text("VISUALIZAR",style: TextStyle(
                      color: Colors.white
                    ),),
                    color: Color.fromARGB(255, 26, 115, 232),
                    padding: EdgeInsets.only(left: 50,right: 50),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
