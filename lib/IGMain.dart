import 'package:flutter/material.dart';
import 'package:week2_instagram/IGDMs.dart';
import 'package:week2_instagram/ProfilePage.dart';
import 'package:week2_instagram/ExplorePage.dart';

class IGMain extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt, color: Colors.black,),
    title: SizedBox(
        height: 150.0, width: 150.0,
        child: Image.asset("assets/images/ig-logo.png", height: 250, width: 250,)
        ),
    
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Image.asset("assets/images/igtv-logo.png", height: 25, width: 25,),
      ),

      Padding(
        padding: EdgeInsets.only(right: 24.0),

        child: IconButton( 
          onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IGDMs()),
           );
           },
          icon: Icon(Icons.send), 
          color: Colors.black,
          ),
        
      ),

    ],
      ),

    

     body: 
      new Center(
        child: Column(
          children: <Widget>[
            Expanded(
               //STORIES
          child: new ListView(
           children: <Widget>[
            new Container(
              height: 80.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset("assets/images/igstory-0.jpg"),
                  Image.asset("assets/images/igstory-1.jpg"),
                  Image.asset("assets/images/igstory-2.jpg"),
                  Image.asset("assets/images/igstory-3.png"),
                  Image.asset("assets/images/igstory-4.png"),
                  Image.asset("assets/images/igstory-5.png"),
                ],
                ),
              ),
          ],
        ),
            ),
            Expanded(
               //POSTS
              child: new ListView(
           children: <Widget>[
            new Container(
              height: 80.0,
              child: new ListView(
                scrollDirection: Axis.vertical,
                children: [
                  
                ],
                ),
              ),
          ],
        ),
            ),
          
              
        ],
      ),
    ),
       
    //Bottom Navigation Panel
    bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExplorePage()),
           );},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: (){},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: (){},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
           );},
                ),
              ],
            ),
          ),
        ),
        );

  }
}


