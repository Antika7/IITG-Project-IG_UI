import 'package:flutter/material.dart';
import 'package:week2_instagram/IGMain.dart';
import 'package:week2_instagram/ExplorePage.dart';

class ProfilePage extends StatelessWidget {
 

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
        )
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
                  onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IGMain()
              ),
           );},
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

