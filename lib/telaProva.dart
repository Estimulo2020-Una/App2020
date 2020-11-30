import 'package:anima2020/Home.dart';
import 'package:flutter/material.dart';
import 'package:anima2020/ConteudoProva.dart';

class Prova extends StatefulWidget{
  String materia;
  Prova(materia){
    this.materia=materia;
  }
  ProvaState createState(){
    return ProvaState(materia);
  }
}

class ProvaState extends State<Prova>{
  List<ConteudoProva> prova=List<ConteudoProva>();
  int op=0;
 
  ProvaState(materia){
    if(materia=="p"){
      prova.add(ConteudoProva(
        "Oque Deus eaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ?",
        "Deus e fiel aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
        "Deus e de mais",
        "Deus e 10",
        "Deus e vida",
        0
      )); 
      prova.add(ConteudoProva(
        "Oque Deus e ?",
        "Deus e fiel",
        "Deus e de mais",
        "Deus e 10",
        "Deus e vida",
        0
      ));
      prova.add(ConteudoProva(
        "Oque Deus e ?",
        "Deus e fiel",
        "Deus e de mais",
        "Deus e 10",
        "Deus e vida",
        0
      ));
    }
    
  }

  listaPergunta(constraints,ConteudoProva prova,indice,quantidade){
    double largura=.13;
    return(
      Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    //color: Colors.green,
                    child: Column(                     
                      children: [
                        Container(
                          width: constraints.maxWidth,
                          height: constraints.minHeight*.07,
                          margin: EdgeInsets.all(5),
                          color: Color.fromARGB(255,68, 179, 244),
                          child:Row(
                            children: [
                              Container(
                                width: 300,
                                height: double.infinity,
                                padding: EdgeInsets.only(top: 6,left: 4),
                                child: Text(
                                  "Modulo RH",
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                ),
                              ),
                              Container(
                                width: 90,
                                height: double.infinity,
                                padding: EdgeInsets.only(top: 4),
                                child: Text(
                                  "${indice+1}/$quantidade",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 25
                                  ),
                                ),
                              )
                            ],
                          )
                        ),
                         Container(
                          width: constraints.maxWidth,
                          height: constraints.minHeight*.3,
                          margin: EdgeInsets.only(left: 5,right: 5),
                          padding: EdgeInsets.all(12),
                          color: Color.fromARGB(255,68, 179, 244),
                          child: Text(prova.getPergunta()),
                        ),
                        Container(
                          width: constraints.minWidth,
                          height: constraints.maxHeight*.61,
                          margin: EdgeInsets.only(left: 5,right: 5),
                          color: Colors.green,
                          child:Column(                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [  
                              Container(
                                width:constraints.maxHeight,
                                height: constraints.maxHeight*largura,
                                color: Colors.green,
                                child: Row(
                                  children: [
                                    Container(
                                      width: constraints.maxWidth*.1,
                                      height: constraints.maxHeight,
                                      color: Colors.red,
                                      child: Radio(
                                      groupValue: prova.getResposta(),
                                      value: 1,
                                      onChanged: (value){
                                        setState(() {
                                          prova.resposta=value;   
                                          prova.corrigirQuestao(); 
                                        });
                                      },
                                    ),
                                    ),
                                    Container(
                                      width: constraints.maxWidth*.87,
                                      height: constraints.maxHeight,
                                      color: Colors.orange,
                                      child: Text(prova.getQuestao1()),
                                    )
                                  ],
                                ),
                              ), 

                              Container(
                                width:constraints.maxHeight,
                                height: constraints.maxHeight*largura,
                                color: Colors.yellow,
                                child: Row(
                                  children: [
                                    Radio(
                                      groupValue:prova.getResposta(),
                                      value: 2,
                                      onChanged: (value){
                                        setState(() {
                                          prova.resposta=value;  
                                          prova.corrigirQuestao();                                   
                                   
                                        });
                                      },
                                    ),
                                    Text(prova.getQuestao2())
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),



                      ],
                    ),
                  )

    );
  }

  finalizarProva(constraints){
    return(
      Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        color: Colors.yellow,
        child: Center(
          child: Container(
            width: double.infinity,
            height: constraints.maxHeight*.7,
            color: Colors.red,
            child:Column(
              children: [
                Container(
                  child: Text("${op}"),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {                      
                      for(int i =0;i<prova.length;i++){
                      if(prova[i].getResultado()){
                        op++;
                      }
                      if(op>prova.length/2){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      }                     
                    }
                      op=0;
                    });
                  },
                  child: Text("validar"),
                )
              ],
            )
          ),
        ),
      )
    );
  }

  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.dehaze, size: 50,),
          backgroundColor: Color.fromARGB(255,0, 152, 252),
        ),
        body:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(
            builder: (_,constraints){
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: prova.length+1,
                itemBuilder: (_,indice){
                  if(prova.length-indice!=0){
                    //return Text("indice->${indice}\nprova->${prova.length-indice}-----");
                    return listaPergunta(constraints, prova[indice],indice,prova.length);
                  }else{
                    //return Text("deus e fiel");
                    return finalizarProva(constraints);
                  }
                },
              );
            },
          ),
        )
      ),
    );
  }
}