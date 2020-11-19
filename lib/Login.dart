import 'package:flutter/material.dart';
import 'package:anima2020/Home.dart';

class Login extends StatelessWidget {
  build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 650,
            //color: Colors.black12,
            child: Image.asset(
              "image/imgLogin.png",
              width: double.infinity,
              height: 450,
              fit: BoxFit.fitHeight,
            ),
          ),

          Container(
            width: double.infinity,
            height: 150,
            //color: Colors.yellow,
            padding:EdgeInsets.only(left: 80,right: 80),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 75,
                  //color: Colors.green,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_circle)
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 75,
                  //color: Colors.green,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock)
                    ),
                  ),
                )
              ],
            ),
          )
         
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (BuildContext) => Home()));
        },
        child: Text("Entrar"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
