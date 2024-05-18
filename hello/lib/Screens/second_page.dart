
// ignore_for_file: prefer_initializing_formals, prefer_const_constructors, sized_box_for_whitespace, file_names, use_key_in_widget_constructors, must_be_immutable, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_local_variable, no_leading_underscores_for_local_identifiers, avoid_print, prefer_final_fields, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_page.dart';

class SecondPage extends StatelessWidget{

  String userName = '';

  SecondPage(String userName, {super.key}){
    this.userName = userName;
  }

  void navigateToBack(){

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, HomePage());
          },
          icon: Icon(Icons.home),
        ),

        title: Text('Hello user'),
        // title: TextFieldToNavBar(),
      
      ),

      body: FormViewPage(),
      // body: RowColumn(userName),
      backgroundColor: Colors.white,
      
    );

  }

}
class FormViewPage extends StatefulWidget {
  const FormViewPage({super.key});

  @override
  State<FormViewPage> createState() => _FormViewPageState();
}

class _FormViewPageState extends State<FormViewPage> {

  String _username='';
  String _password='';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
      
        child: Form(

          key: _formKey,

          child: Container(

            padding: EdgeInsets.only(top: 20.0),

            child: Column(
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                      hintText: 'Username'
                    ),
                    maxLength: 15,
                    // maxLines: 2,
                  
                    validator: (text) {
                      if(text!.isEmpty){
                        return 'Please enter a username';
                      }
                      return null;
                    },
                    onSaved: (username) {
                      _username = username!;
                    },
                    
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                  
                    maxLength: 12,
                    obscureText: true,
                  
                    decoration: InputDecoration(
                      hintText: 'Password'
                    ),
                  
                    validator: (password) {
                      if(password!.isEmpty){
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    onSaved: (password) {
                      _password = password!;
                    },
                    
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                IconButton(
                  icon: Icon(Icons.save), 
                  onPressed: () {  
                    print('pressed');
                    if (_formKey.currentState!.validate()) {
                      print('Entered data are ok');

                      print('Name - $_username');
                      print('Password - $_password');
                      _formKey.currentState!.save();
                      print('Name - $_username');
                      print('Password - $_password');

                    }else{

                      _username = '';
                      _password = '';
                      print('Somthing went wrong');
                      print('Name - $_username');
                      print('Password - $_password');

                    }
                  },),
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}


class TextFieldToNavBar extends StatelessWidget {

  TextEditingController textEditor = TextEditingController();
  

  @override
  Widget build(BuildContext context) {

    // textEditor.text = '';
    String valueOfField = textEditor.text;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          //maxLength: 20,
          //obscureText: true,
          //keyboardType: TextInputType.number,
          //autofocus: true,
          //enabled: false,
          //cursorColor: Colors.red,
          
          decoration: InputDecoration(

            hintText: "Search...",
            border: InputBorder.none,
            filled: true,
            // prefixIcon: Icon(Icons.search)
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                textEditor.text='';
              },
            ),
            
      
          ),
          onChanged: (text){
            //print(text);
          },
          onSubmitted: (text){
            //print(text);
          },
          controller: textEditor,
          
        ),
    );
          
  }
}

class RowColumn extends StatelessWidget {

  String userName = '';

  RowColumn(String userName, {super.key}){
    this.userName = userName;
  }

  @override
  Widget build(BuildContext context) {
    return Container(

        width: double.infinity,

        child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [

              Text(userName),
              const Text("Welcome to Second Page"),

            ],
            
          ),
      );

  }
}

class ListViews extends StatelessWidget {

  var items = List<String>.generate(100, (index){
    return 'Item $index ).';
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){

          return ListTile(

            leading: IconButton(icon: Icon(Icons.call), onPressed: () {  },),
            title: Text(items[index]),
            subtitle: Text('Not nessary'),
            trailing: Icon(Icons.call_missed_outgoing),
            onTap: (){},
            onLongPress: () {},

          );
        }

        
        ),

      // child: ListView(

      //   // padding: EdgeInsets.all(8.0), 
        
      //   children: <Widget>[

      //     ListTile(
      //       leading: IconButton(icon: Icon(Icons.call), onPressed: () {  },),
      //       title: Text('Call Agin'),
      //       subtitle: Text('Not nessary'),
      //       trailing: Icon(Icons.call_missed_outgoing),
      //       onTap: (){},
      //       onLongPress: () {},
      //     ),
      //     Divider(
      //       height: 2.0,
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.block),
      //       title: Text('Block'),
      //       subtitle: Text('Add to blocked list'),
      //       trailing: Icon(Icons.signal_wifi_4_bar_lock),
      //       onTap: (){},
      //     ),
      //     Divider(
      //       height: 2.0,
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.save),
      //       title: Text('Add to Contacts'),
      //       subtitle: Text('Save for future'),
      //       trailing: Icon(Icons.saved_search),
      //       onTap: (){},
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 300.0,
      //       color: Colors.green, 
      //       child: const Text("Welcome to second page",)
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 300.0,
      //       color: Colors.yellow, 
      //       child: const Text("This page loadedwith list View")
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 300.0,
      //       color: Colors.red, 
      //       child: const Text("End")
      //     ),
             
      //   ],
            
      // ),


    );
    
  }
}