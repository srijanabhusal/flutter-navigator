import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(debugShowCheckedModeBanner:false,home: MyApp(),));

 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: GestureDetector( 
        child:Column(children: <Widget>[
        Text('Tap me to navigate to another page.',style: TextStyle(fontSize: 20.0),),
        SizedBox(height: 20,),
        Image.network('https://upload.wikimedia.org/wikipedia/commons/8/87/TVE_La1_-_Logo_2008.png'),
      ],),     
        
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          })
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: GestureDetector(
        child: Center(
          child:Column(children: <Widget>[
                Text('Tap me to navigate to previous page.',style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 20,),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqejV8Bv9NmvA9dQN9qiWGPkVG7lAro6T7H-2t6xm8YhuK3w2c&s'),
              ],),  
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
