import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final List<String> ar =[ ];
final ThemeData themeData =ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.teal,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CREATE YOUR LIST'),
        
        centerTitle: true,
        
        backgroundColor: Colors.redAccent,

      ),
      body: Column(
        
        children:<Widget>[
           Container(
             width: 420,
             height: 50,
             
             decoration: BoxDecoration(
               border: Border.all(
                 width: 1.5,
               )
             ),
           child: TextField( 
             
             controller: controller,
             decoration: InputDecoration(
               border: InputBorder.none,
               hintText: "E.g. Your activity",
               
               icon: Icon(Icons.add_to_queue),
               
               
               ),
               
               
           
           ),
             
          ), 
           Padding(padding: EdgeInsets.all(10),),
          RaisedButton( 
            child: Text('CREATE'),
            onPressed: (){
              print(controller.text);
              setState(() {

                 ar.add(controller.text); 
              });
            controller.clear();
            },
            
            color: Colors.red,
            textColor: Colors.white,
            splashColor: Colors.black,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10)
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
            end:  Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7,0.9],
            colors: [
              Colors.red[100],
              Colors.red[100],
              Colors.red[50],
              Colors.red[50],
            ],
              ),
              border: Border.all(
                width: 1.0,
                
              )
            ),
            child: ListView.builder(
            shrinkWrap: true,
              itemCount: ar.length,
              itemBuilder: (BuildContext context, int index){
                return Text(ar[index]);
              },
            ),
          )
          
       ],
       
        
      ),
      
     
      
      
    );
  }
}