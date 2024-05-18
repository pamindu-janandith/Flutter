
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        title: Text('Navigations'),
        
      
        actions: [
          IconButton(
            onPressed: (){

              // By using routes

              // Navigator.of(context).pushNamed('/second_page');


              //Normal navigations like belove

              Navigator.of(context).push(MaterialPageRoute(
                builder: (_){// or _ in contect
                  return SecondPage("Pamindu");
                }
                ),
              );
            }, 
            
            icon: Icon(Icons.arrow_forward_ios_outlined)
          ),
          
            
        ],
      ),

      body: Container(

        width: double.infinity,

        child: const Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [

              Text("First Page"),

            ],
            
          ),
      ),

      backgroundColor: Colors.yellowAccent,
      
    );

  }

}