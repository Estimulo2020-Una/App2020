import 'package:flutter/material.dart';


class VideoAula extends StatelessWidget {
  listaVideo() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.black12,
            child: Icon(
              Icons.image,
              color: Colors.green,
            ),
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
              leading: Icon(Icons.dehaze,size: 50,),
              backgroundColor: Colors.green,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                      listaVideo(),
                    ],
                  ),
                )
              ],
            )));
  }
}