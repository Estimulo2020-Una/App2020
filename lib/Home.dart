import 'package:flutter/material.dart';
import 'package:anima2020/VideoAula.dart';
import 'package:anima2020/Chat.dart';
import 'package:anima2020/AcompanhamentoNegocio.dart';

class Home extends StatelessWidget {
  getEventos() {
    return Container(
      width: double.infinity,
      height: 600,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height:550,
            child: Image.network(
              "https://images.pexels.com/photos/887827/pexels-photo-887827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
               fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  build(context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 211, 211, 211),
          appBar: AppBar(
            leading: Icon(
              Icons.dehaze,
              size: 50,
            ),
            backgroundColor: Color.fromARGB(255,0, 152, 252),
          ),
          drawer: Drawer(
            child: Text("a"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.white,
                      child: Image.asset(
                        "image/avatar.png",
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.white,
                      child: Text(
                        "Olá,Joaquim!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.white,
                        margin: const EdgeInsets.only(top: 1),
                        child: Table(
                          children: [
                            TableRow(children: [
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext) =>
                                                  Chat()));
                                    },
                                    icon: Icon(Icons.chat_bubble_outline),
                                    iconSize: 30,
                                    color: Colors.black26,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext) =>
                                                  VideoAula()));
                                    },
                                    icon: Icon(Icons.live_tv),
                                    iconSize: 30,
                                    color: Colors.black26,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext) =>
                                                  Acompanhamento()));
                                    },
                                    icon: Icon(Icons.laptop),
                                    iconSize: 30,
                                    color: Colors.black26,
                                  )
                                ],
                              )
                            ])
                          ],
                        )),
                    getEventos(),
                    getEventos(),
                    getEventos()
                  ],
                ),
              )
              //Image.asset("image/imgHome1.png")
            ],
          )),
    );
  }
}
