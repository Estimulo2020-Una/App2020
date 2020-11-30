import 'package:flutter/material.dart';
import 'package:anima2020/VideoAula.dart';
import 'package:anima2020/Chat.dart';
import 'package:anima2020/AcompanhamentoNegocio.dart';

class Home extends StatelessWidget {
  getEventos(imagem) {
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
              imagem,
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

  getLista(imagem){
    return(
      Container(   
              width: double.infinity,
              height: 900,
              color:Colors.white,
              margin: EdgeInsets.only(top: 10),
              child:LayoutBuilder(
                builder: (_,constraints){
                  return(
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: constraints.maxHeight*.7,
                            color: Colors.yellow,
                            child: Image.network(
                              imagem,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            padding: EdgeInsets.only(left: 10,top: 12),
                            child: Text(
                              "Curso Online / Empreendedorismo",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 90,
                            color:Colors.white,
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Como criar um modelo de negócio\nde impacto\nsocioambiental",
                              style: TextStyle(
                                  fontFamily: "lato",
                                  fontWeight:FontWeight.bold,
                                  fontSize: 19
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 60,
                            color:Colors.white,
                            padding: EdgeInsets.only(left: 10,top: 5),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 27,
                                  color:Colors.white,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        textDirection: TextDirection.ltr,
                                      ),
                                      Text("18:00")
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 27,
                                  color:Colors.white,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        textDirection: TextDirection.ltr,
                                      ),
                                      Text("22/12/2020")
                                    ],
                                  ),
                                )
                                /*
                        Icon(
                          Icons.calendar_today_rounded,
                          textDirection: TextDirection.ltr,
                        )*/
                                //
                              ],
                            ),
                          ),
                          RaisedButton(
                            child: Text(
                              "VISUALISAR",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            onPressed: (){},
                            color: Color.fromARGB(255,0, 78, 153),
                          ),

                        ],
                      )
                  );
                },
              )
            )

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
                    //getEventos("https://images.pexels.com/photos/887827/pexels-photo-887827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    //getEventos("https://images.pexels.com/photos/1602726/pexels-photo-1602726.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    //getEventos("https://images.pexels.com/photos/327540/pexels-photo-327540.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
                    getLista("https://www.sebrae.com.br/Sebrae/Portal%20Sebrae/Imagens%20SebraeNA/banner%20secund%C3%A1rio%20enef.png"),
                    getLista("https://www.sebrae.com.br/Sebrae/Portal%20Sebrae/Imagens%20SebraeNA/secund%C3%A1rio_click.png"),
                    getLista("https://www.sebrae.com.br/Sebrae/Portal%20Sebrae/Imagens%20SebraeNA/banner_secundario_1_Parcerias.png"),

                  ],
                ),
              )
              //Image.asset("image/imgHome1.png")
            ],
          )),
    );
  }
}
