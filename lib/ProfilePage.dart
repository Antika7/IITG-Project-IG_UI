import 'package:flutter/material.dart';
import 'package:week2_instagram/IGMain.dart';
import 'package:week2_instagram/ExplorePage.dart';

class ProfilePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("_antika24_",style: TextStyle(color: Colors.black87),),
        
        actions: <Widget>[
        IconButton(
         icon: Icon(
         Icons.arrow_drop_down_rounded,
         color: Colors.black,
         ),
        onPressed: () {},
        ),
        
        Padding(padding: EdgeInsets.fromLTRB(24 , 0 , 44, 0),
        child: IconButton(
         icon: Icon(
         Icons.add_sharp ,
         color: Colors.black,
         ),
        onPressed: () {},
        ),
        )
        
        ],
        
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
        
      ),

      body:  
      Column( //Grid and details
         
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Row( //Picture and follower, following details
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                Text('Posts     '),
                Text('Followers   '),
                Text('Following   '),
                    ],
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text('15     \t\t\t\t\t\t\t\t'),
                       Text('224             '),
                       Text('180'),],)
                ],)
                
              ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(34, 18, 0, 10),
                child: Text('Antika Burman',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(34, 7, 0, 10),
                child: Text('*Insert cool bio here*'),
              ),

              SizedBox(
            width: 400,
              child: ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.search, color: Colors.black38,),
              style: ElevatedButton.styleFrom(primary: Colors.grey[350]),
            label: Text("Edit Profile", style: TextStyle(color: Colors.black38, fontSize: 17), textAlign: TextAlign.left,),
            ),
            ),

           /* CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
            children: <Widget>[
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/157/young-and-old-1399297.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/476/chicago-night-traffic-1447010.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/977/cupcake-gift-bag-1641683.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/d62/cute-doggie-1641632.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/286/flower-1641764.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/c06/road-trip-1641709.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/bac/a-path-in-the-forest-1638722.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/64d/morning-mist-1-1641714.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/bdb/ski-sun-fun-and-love-1635239.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/16a/pink-bike-1631162.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.freeimages.com/images/small-previews/0cf/tulips-1-1377350.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.unsplash.com/photo-1627401187687-07db1c9331fb?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),),),
              Container( child: Image(image: NetworkImage('https://cdn.pixabay.com/photo/2021/07/21/15/17/fog-6483278__340.jpg'),),),
              Container( child: Image(image: NetworkImage('https://cdn.pixabay.com/photo/2021/07/11/10/39/fantasy-6403406__340.jpg'),),),
              Container( child: Image(image: NetworkImage('https://images.pexels.com/photos/8843060/pexels-photo-8843060.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),),),
            ],
            ),
                ),
              ],
            ),*/
            

            ],
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

