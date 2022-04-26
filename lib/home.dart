import 'package:flutter/material.dart';
import 'Notification.dart';
import 'route_generator.dart';

class Home extends StatefulWidget {
  Home({ Key? key}) : super(key: key); 
  // String password;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/Notification');
            } ,
            icon: Icon(Icons.notifications)
            )
        ],
      ),
      body: Center(
        child: Text('Home')
      ),      
    );
  }
}