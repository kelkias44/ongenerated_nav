import 'package:flutter/material.dart';
import 'Notification.dart';
import 'main.dart';
import 'home.dart';
import 'butNavBar.dart';

class RouteGeneretor{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){

      case '/':
      return MaterialPageRoute(builder: (_)=>MyHomePage());
      case'/Home':
      return MaterialPageRoute(builder: (_)=>Home());
      case '/Notification':
      return MaterialPageRoute(builder: (_)=> Notify());
       case '/Main':
      return MaterialPageRoute(builder: (_)=> MyHomePage());

      case '/ButtomNav':
      return MaterialPageRoute(builder: (_) =>ButtomNav());
      
      default:
        return MaterialPageRoute(builder: (context) => MyHomePage());
    }
  }
}
