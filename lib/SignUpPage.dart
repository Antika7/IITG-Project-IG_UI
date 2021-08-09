

import 'package:flutter/material.dart';
import 'package:week2_instagram/LoginPage.dart';
import 'package:week2_instagram/IGMain.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                          new Container(
                            child: Image.asset('assets/images/ig-logo.png'),
                         ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Column(
                        children: [
                          makeInput(label: "Username"),
                          makeInput(label: "Password",obsureText: true),
                          makeInput(label: "Confirm Pasword",obsureText: true)
                        ],
                      ),
                    ),
                    
                    

                    Padding(padding: EdgeInsets.all(10.0),
                    child: Container(
                           child: ButtonTheme(
                          child: ElevatedButton(
                          onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IGMain()),
           );
           },
                            child: Text("Sign Up",style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600,fontSize: 16,

                          ),),
                          ),
                        ),
                    ),
                    ),
                    
                   new Row(
            mainAxisAlignment: MainAxisAlignment.center,
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

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(2.0),
                        child:Text("Have an account? ", style: TextStyle(color:Colors.grey))
                        ),
                        
                       new TextButton(
                onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
           );},
                child: new Text(
                  'Log In.',
                  style: TextStyle(color: Colors.blueAccent)
                ),
              )
                        
                      ],
                    )
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.grey
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
               
            ),
          ),
          border: OutlineInputBorder(
              
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
    