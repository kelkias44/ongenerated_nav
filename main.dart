import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'route_generator.dart';
import 'home.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nav_tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
      initialRoute: '/',
      onGenerateRoute: RouteGeneretor.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState!.validate()){
      Navigator.pushReplacementNamed(context, '/ButtomNav');      
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: Form(
              autovalidateMode: AutovalidateMode.always, 
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email',
                    ),
                    validator: MultiValidator(
                      [
                      RequiredValidator(errorText: 'Required'),
                      EmailValidator(errorText: 'not an email')
                      ]
                      ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 25),
                     child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'password',
                        
                      ),
                      validator: MultiValidator([
                      RequiredValidator(errorText: 'Required'),
                      MinLengthValidator(6, errorText: 'should be at least 6 characters'),
                 ]) ),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: RaisedButton(
                      onPressed: validate,
                      child: Text('Login'),
                      ),
                  )
                ]
              )
          )
        )
              
        
      ),
    );
  }
  
}


 
