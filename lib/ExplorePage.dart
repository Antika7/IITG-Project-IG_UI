import 'package:flutter/material.dart';
import 'package:week2_instagram/IGMain.dart';
import 'package:week2_instagram/ProfilePage.dart';

class ExplorePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
         
            
              leading: Icon(Icons.search, color: Colors.black38,),
               backgroundColor: Colors.grey[350],
              title: TextButton(child: Text('Search',style: TextStyle(color: Colors.black38,fontSize: 17)),onPressed: (){},),
            
      ),

      body:  Center(  
          child: GridView.extent(  
            //primary: false,  
            padding: const EdgeInsets.all(3),  
            crossAxisSpacing: 3,  
            mainAxisSpacing: 2,  
            maxCrossAxisExtent: 300.0,  
            children: <Widget>[  
              Container(    
                child: Image(image: NetworkImage('https://thumbs.dreamstime.com/z/bright-scenery-sunny-forest-summer-day-looking-like-scene-movie-161561752.jpg')),
                ),
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/z/thai-sakura-17645086.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/chicken-wings-10252096.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/get-off-my-nose-7688607.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://www.lboro.ac.uk/media/wwwlboroacuk/external/content/mediacentre/pressreleases/2018/10/maxresdefault.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/paraglider-13481903.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/stonehenge-2580499.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/chocolate-cake-533660.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/old-door-13925863.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/burger-3680169.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/acient-rome-761508.jpg'),)
              ),  
              Container(  
               child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/white-tiger-2743976.jpg'),)
              ),  
            ],  
          )),   


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
              MaterialPageRoute(builder: (context) => ExplorePage()
              ),
           );
           },
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


