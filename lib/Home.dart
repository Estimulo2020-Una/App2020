import 'package:flutter/material.dart';
import 'package:anima2020/VideoAula.dart';
import 'package:anima2020/Chat.dart';
import 'package:anima2020/AcompanhamentoNegocio.dart';

class Home extends StatelessWidget {
  getEventos() {
    return Container(
      width: double.infinity,
      height: 260,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height:210,  
            child: Image.asset("image/empreendedorismo-capa.jpg"),          
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Color.fromARGB(255,220, 222, 222),                    
          )
        ],
      ),
    );
  }

  build(context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromRGBO(206, 230, 204, 0.9),
          appBar: AppBar(
            leading: Icon(
              Icons.dehaze,
              size: 50,
            ),
            backgroundColor: Colors.green,
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
