
// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'Screens/second_page.dart';
import 'Screens/home_page.dart';

void main(){
  
  runApp(MyApplication());

  // for when using DevicePreview
  // DevicePreview(
  //   builder: (context) => MyApplication(), // Wrap your app
  // );

}

// ignore: use_key_in_widget_constructors
class MyApplication extends StatelessWidget{
  
  // material eke thiyena widget hadanna thiyena anith class eka ->> StateFullWidget
  
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      // for when using DevicePreview
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,

      home: HomePage(),
      // home: Text('Hello User'),
      
      routes: <String,WidgetBuilder>{

        '/second_page' : (context)=>SecondPage("Unknown"),

      },

    );
  
  }
  
}

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      
        appBar: AppBar(
      
            title: const Text('Hello user'),
      
            leading: IconButton(
              onPressed: (){
      
              }, 
              icon: const Icon(Icons.menu)
            ),
            actions: [
              
              IconButton(
                onPressed: (){
      
                }, 
              icon: const Icon(Icons.search)
              ),
      
              IconButton(
                onPressed: (){
      
                }, 
                icon: const Icon(Icons.more_vert)
              ),
            
            ],
      
            flexibleSpace: Image.asset('assets/bg.jpg',fit: BoxFit.cover,),
      
            // bottom: PreferredSize(
            //   child: Container(),
            //   preferredSize: Size.fromHeight(70.0),
            // ),

            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            elevation: 22.0,
        ),
          
        // body: const Center(
        //   child: Text('Hi, I\'m your body',),
        // )
          
        body: TabBarView(
            children: [

              Container(

                margin: const EdgeInsets.all(20.0),
                // width: double.infinity,

                child: HomeTab1(),
              ),

              Container(

                // transform: Matrix4.rotationZ(.5),
                margin: const EdgeInsets.all(20.0),
                child: HomeTab2(),
              ),

              const Icon(Icons.directions_bike),
              
            ],
        ),  

        // bottomNavigationBar: BottomAppBar(
        //   shape: const CircularNotchedRectangle(),
        //   child: Container(height: 50.0),
        // ),
      
      ),

    );
    

  }
  
}

class HomeTab1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(

      body: Center(child: Text("This is Tab 1"),),
      backgroundColor: Color.fromARGB(255, 64, 245, 19),
      
    );

  }

}
class HomeTab2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body : KutuPoint(),

    );

  }

}

class KutuPoint extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(

      body: Text("Hello"),
      backgroundColor: Colors.blue,
      
    );

  }

}


class Home2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        title: const Text('Hello New User'),
      
        actions: [

          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.more_vert)
          ),
            
        ],
      
        flexibleSpace: Image.asset('assets/bg.jpg',fit: BoxFit.cover,),
        elevation: 22.0,

      ),

      body: Container(

        child: Center(
          child: Text("Hellooo",)
        ),
        color: Colors.yellow,

        margin: EdgeInsets.all(8.0),
        height: 200.0,
        width: double.infinity,

      ),

      backgroundColor: Colors.blueGrey,
      
    );

  }

}

class Home3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        title: Text('Hello New User'),
      
        actions: [

          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
          ),
            
        ],

        flexibleSpace: Image.asset('assets/bg.jpg',fit: BoxFit.cover,),

      ),

      body: Container(

        margin: EdgeInsets.all(8.0),
        color: Colors.yellow,
        width: double.infinity,
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
              Text("Hello"),
              Text("Next row"),
              
          ],
        ),
      ),

      backgroundColor: Colors.pink,
      
    );

  }

}

class Home4 extends StatelessWidget{

  int count=0;

  void increament(){
    count++;
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        title: Text('Count push button'),
      
        actions: [

          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
          ),
            
        ],

        flexibleSpace: Image.asset('assets/bg.jpg',fit: BoxFit.cover,),

      ),

      body: Container(

        width: double.infinity,

        child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              const Text("You have pushed button times :"),
              Text(count.toString()),
              // Text('$count'),
            ],
            
          ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: increament,
        child: Icon(Icons.add),
      ),

      backgroundColor: Colors.yellowAccent,
      
    );

  }

}

class Home5 extends StatefulWidget {
  const Home5({super.key});

  @override
  State<Home5> createState() => _Home5State();
}

class _Home5State extends State<Home5> {

  int count =0;

  void increament(){

    setState(() {
      count++;
      
    });
    
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        
        title: Text('Count push button'),
      
        actions: [

          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
          ),
            
        ],

        flexibleSpace: Image.asset('assets/bg.jpg',fit: BoxFit.cover,),

      ),

      body: Container(

        width: double.infinity,

        child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Text("You have pushed button times :"),
              Text(count.toString()),
              // Text('$count'),
            ],
            
          ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: increament,
        child: Icon(Icons.add),
      ),

      backgroundColor: Colors.yellowAccent,
      
    );
  
  }
}





