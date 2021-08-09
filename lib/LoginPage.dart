import 'package:flutter/material.dart';
import 'package:week2_instagram/SignUpPage.dart';
import 'package:week2_instagram/IGMain.dart';
//import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
//import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => new _LoginPage();
}


class _LoginPage extends State<LoginPage> {

  //String _email,_pword;
  //final auth=FirebaseAuth.instance;


  final TextEditingController _userId = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  var _textStyleBlack = new TextStyle(fontSize: 12.0, color: Colors.black);
  var _textStyleGrey = new TextStyle(fontSize: 12.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      bottomNavigationBar: _bottomBar(),
      body: _body(),
    );
  }

  Widget _userIDEditContainer() {
    return new Container(
      child: new TextField(
        controller: _userId,
        decoration: new InputDecoration(
            hintText: 'Username',
            border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.black),
            ),
            isDense: true),
        style: _textStyleBlack,
      ),
    );
  }

  Widget _passwordEditContainer() {
    return new Container(
      padding: const EdgeInsets.only(top: 5.0),
      child: new TextField(
        controller: _password,
        obscureText: true,
        decoration: new InputDecoration(
            hintText: 'Password',
            border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.black),
            ),
            isDense: true),
        style: _textStyleBlack,
      ),
    );
  }

  Widget _loginContainer() {
    return new GestureDetector(
      onTap: _login,
      child: new Container(
        child: ElevatedButton(
                          onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IGMain()),
           );},
                            child: Text("Log In",style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600,fontSize: 16,

                          ),),
                          ),
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 10.0),
        width: 500.0,
        height: 40.0,
      ),
    );
  }

  
  Widget _bottomBar() {
    return new Container(
        alignment: Alignment.center,
        height: 50.0,
        child: new Column(
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  height: 1.0,
                  color: Colors.grey.withOpacity(0.7),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 17.5),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text('Dont have an account?', style: TextStyle(color: Colors.grey)),
                      
                       
                    ],
                   
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget _body() {
    return new Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(25.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 15.0),
            child: Image.asset('assets/images/ig-logo.png'),
          ),
          _userIDEditContainer(),
          _passwordEditContainer(),
          _loginContainer(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width / 2.7,
                color: Colors.grey,
                child: new ListTile(),
              ),
              new Text(
                ' OR ',
                style: new TextStyle(color: Colors.blueGrey),
              ),
              new Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width / 2.7,
                color: Colors.grey,
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Don\'t have an account? ',
                style: _textStyleGrey,
              ),
              new TextButton(
                onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
           );},
                child: new Text(
                  'Sign Up.',
                  style: TextStyle(color: Colors.blueAccent)
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }

  void _login() {
    
      Navigator.of(context).pushReplacementNamed('/HomeScreen');
    }
  }
