import 'package:flutter/material.dart';
import 'package:week2_instagram/SignUpPage.dart';
import 'package:week2_instagram/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
/*import 'package:firebase_auth/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';*/


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
  home: Home(),
  
));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children:<Widget>[
          new Container(
            child: Image.asset('assets/images/ig-logo.png'),
          ),
           
           Padding(padding: EdgeInsets.fromLTRB(80, 20, 80, 0),

           child: TextButton(
              child: Text('Log In',style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal),),
              style: TextButton.styleFrom(
                   primary: Colors.white,
                   backgroundColor: Colors.blueAccent,),
              onPressed: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),

           ),
           
          Padding(padding: EdgeInsets.fromLTRB(80, 0, 80, 20),
          
          child: TextButton(
            style: TextButton.styleFrom(
                side: BorderSide(color: Colors.blueAccent, width: 2),
            ),
            child: Text('Sign Up'),

            onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
           );
           },
           ),

          ),

                      
        ],

      ),       
      );
    
  }
}