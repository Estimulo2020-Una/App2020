import 'package:flutter/material.dart';
import 'package:anima2020/Home.dart';

class Login extends StatelessWidget {
  build(context) {
    return Scaffold(
      body: Center(
          child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: double.infinity,
                height: 180,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 90,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Gmail',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 90,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                        ),
                      ),
                    )
                  ],
                ),
              ))),
      floatingActionButton: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (BuildContext) => Home()));
        },
        child: Text("Entrar"),
      ),
    );
  }
}
