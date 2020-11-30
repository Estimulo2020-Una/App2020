import 'package:flutter/material.dart';
import 'package:anima2020/Home.dart';

class Login extends StatelessWidget {
  build(context) {
    return Scaffold(
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       child: LayoutBuilder(
         builder: (_,constrainst){
           return Column(
             children: [
               Container(
                 width: constrainst.maxWidth,
                 height: constrainst.maxHeight*.6,
                 color: Colors.yellow,
                 child: Image.asset(
                   "image/imgLogin.png",
                    fit: BoxFit.fitHeight,
                ),
               ),
               Container(
                 width: constrainst.maxWidth,
                 height: constrainst.maxHeight*.4,
                 color: Colors.white, 
                 padding: EdgeInsets.all(60),   
                 child:LayoutBuilder(
                   builder: (_,constrainst){
                     return Column(
                       children: [
                         Container(
                           width:constrainst.maxWidth,
                           height: constrainst.maxHeight*.2,
                           child: TextField(
                             decoration: InputDecoration(
                               border: OutlineInputBorder(),
                               prefixIcon: Icon(Icons.account_circle)
                             ),
                           ),
                         ),
                         Container(
                           width:constrainst.maxWidth,
                           height: constrainst.maxHeight*.2,
                           margin: EdgeInsets.only(top: constrainst.maxHeight*.1,bottom:constrainst.maxHeight*.07 ),
                           //color: Colors.green,
                           child: TextField(
                             decoration: InputDecoration(
                               border: OutlineInputBorder(),
                               prefixIcon: Icon(Icons.lock)
                             ),
                           ),
                         ),
                         RaisedButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Home()));
                           },
                           child: Text("Entrar"),
                         )
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
    );
  }
}
