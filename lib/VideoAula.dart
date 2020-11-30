import 'package:flutter/material.dart';
import 'package:anima2020/telaProva.dart';


class VideoAula extends StatelessWidget {
  retornaCurso(context,constraints,imagem,texto){
    return(
        Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          //color: Colors.red,
          child: Column(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight*.6,
                color: Colors.white,
                child: Image.asset(
                  imagem,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight*.2,
                color: Colors.white,
                child: Text(
                  texto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "arial",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RaisedButton(
                color: Color.fromARGB(255, 26, 115, 232),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Prova("p")));
                },
                child: Text(
                    "VISUALIZAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                ),
              )
            ],
          ),
        )
    );
  }
  build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(
            Icons.dehaze,
            size: 50,
          ),
          backgroundColor: Color.fromARGB(255,0, 152, 252),
        ),
        body:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.orange,
          child: LayoutBuilder(
            builder: (_,constraints){
              return Column(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*.15,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          width: constraints.maxWidth*.3,
                          height: constraints.maxHeight,
                          color: Colors.yellow,
                          child: Image.asset(
                              "image/avatar.png",
                              fit:BoxFit.fitWidth,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight*.85,
                    color: Colors.white,
                    child:LayoutBuilder(
                      builder: (_,constraints){
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            retornaCurso(context,constraints,"image/ti.png","MODULO DE TECNOLIGIA \n E  INOVAÇAO"),
                            retornaCurso(context,constraints,"image/financeiro.png","MODULO DE TECNOLIGIA \n E INOVAÇAO"),
                            retornaCurso(context,constraints,"image/rh.png","MODULO GESTAO \n DE RH"),
                            retornaCurso(context,constraints,"image/marketing.png","MODULO GESTAO \n DE RH"),
                          ],
                        );
                      },
                    )
                  )
                ],
              );
            },
          ),
        ),
      )
    );
  }
}


