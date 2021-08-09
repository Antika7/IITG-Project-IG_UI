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
              post(),
          ],
        ),
            ),
            
            //post(),

          /* Expanded(
               //POSTS
              child: new ListView(
           children: <Widget>[
            new Container(
              height: 80.0,
              child: new ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                     
                  )
                  

                  ],)
                  
                ],
                ),
              ),
          ],
        ),
            ),*/
          
              
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

class posts {
  final String url1;
  final String name;
  final String url;

  posts(this.url, this.name, this.url1);
}

List<posts> postt = [
  posts("https://uifaces.co/our-content/donated/3799Ffxy.jpeg", "_firefly5_",
      'https://images.unsplash.com/photo-1454372182658-c712e4c5a1db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
  posts("https://uifaces.co/our-content/donated/KtCFjlD4.jpg", "_.Marshmello._",
      'https://images.unsplash.com/photo-1490750967868-88aa4486c946?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'),
  posts("https://uifaces.co/our-content/donated/gPZwCbdS.jpg", "Jenny20",
      'https://images.unsplash.com/photo-1507146426996-ef05306b995a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHVwcHklMjBkb2d8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
  posts("https://randomuser.me/api/portraits/men/36.jpg", "Wilson",
      'https://images.pexels.com/photos/111755/pexels-photo-111755.jpeg?cs=srgb&dl=pexels-pattama-choomsree-111755.jpg&fm=jpg'),
  posts("https://uifaces.co/our-content/donated/1H_7AxP0.jpg", "Amanda.J",
      'https://i.pinimg.com/originals/86/3e/ef/863eef974d1011a0d3c7a2698591bb3e.jpg'),
  posts("https://randomuser.me/api/portraits/women/79.jpg", "Robbie302",
      'https://www.desicomments.com/dc3/21/445063/445063.png'),
  posts(
      "https://images.unsplash.com/photo-1510227272981-87123e259b17?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=3759e09a5b9fbe53088b23c615b6312e",
      'Tan',
      'https://parade.com/wp-content/uploads/2019/10/Life-Quotes-Dolly-680x430.jpg'),
  posts("https://randomuser.me/api/portraits/men/32.jpg", "N.A.S.T.Y",
      'https://images2.minutemediacdn.com/image/upload/c_crop,h_726,w_1292,x_199,y_0/f_auto,q_auto,w_1100/v1578352479/shape/mentalfloss/62455-shout-factory1.jpg'),
  posts("https://uifaces.co/our-content/donated/vIqzOHXj.jpg", "Annieeee",
      'https://s3.scoopwhoop.com/anj2/5fbb819960c0603f5625e604/222f1044-32a8-4e69-ae15-d1070d954086.jpg'),
  posts("https://randomuser.me/api/portraits/women/44.jpg", "_Hahahaha_",
      'https://miro.medium.com/max/1200/0*s7vGN34hz5jJUYTm.png')
];

class post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(postt.length, (index) => photo(context, index)),
    );
  }

  Widget photo(BuildContext context, int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: CircleAvatar(
              radius: 20, backgroundImage: NetworkImage(postt[index].url)),
          title: Text(
            postt[index].name,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Image.network(postt[index].url1),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Liked This Post',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center)));
              },
            ),
            //SizedBox(),
            Icon(Icons.insert_comment_outlined),
            SizedBox(width: 10),
            Icon(Icons.place_outlined),
          ],
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 10, backgroundImage: NetworkImage(postt[index].url)),
          title: Text(
            'Liked by ' + postt[index].name + ' and 105 others',
            style: (TextStyle(fontSize: 15)),
          ),
          dense: true,
          //contentPadding: EdgeInsets.fromLTRB(10, 0, 50, 10),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Text('Jim_Halpert', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(' Great!'),
              ],
            )),
        SizedBox(height: 10,)
      ],
    );
  }
}



