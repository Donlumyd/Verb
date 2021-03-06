import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voxpopper/registrationScreen.dart';

 class AccountChooser extends StatelessWidget{

   static String id ='accountChooser';

   @override
   Widget build(BuildContext context) {

     return Scaffold(

       appBar: AppBar(
       title: Text('Choose account type'
       ),
       backgroundColor: Colors.blue,
     ),

       body: Padding(

         padding: EdgeInsets.symmetric(horizontal: 24.0),
         child:
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,

             children: [
           Padding(padding:
           EdgeInsets.symmetric(vertical: 16),

         child: Material(
           color: Colors.lightBlueAccent,
           elevation: 5.0,

           child: MaterialButton(
             onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id, arguments: true );

             },
             minWidth: 200.0,
             height: 42.0,
             child: Text('Corporate Account'),
           ),
         ),
       ),


               Padding(padding:
               EdgeInsets.symmetric(vertical: 16),

                 child: Material(
                   color: Colors.lightBlue,
                   elevation: 5.0,

                   child: MaterialButton(
                     onPressed: (){
                       Navigator.pushNamed(context, RegistrationScreen.id, arguments: false);
                     },
                     minWidth: 200.0,
                     height: 42.0,
                     child: Text('Regular Account'),
                   ),
                 ),
               ),

             ],

             )

       )

           );

   }

   }


