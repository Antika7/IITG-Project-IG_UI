import 'package:flutter/material.dart';

class IGDMs extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
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
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
            
           SizedBox(
            width: 400,
              child: ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.search, color: Colors.black38,),
              style: ElevatedButton.styleFrom(primary: Colors.grey[350]),
            label: Text("Search", style: TextStyle(color: Colors.black38, fontSize: 17), textAlign: TextAlign.left,),
            ),
            ),
            
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
            )

           /*Container(
              child: Column(
               
                children: [

                  Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Image(image: AssetImage('assets/images/igdm-1.jpg')),
                        trailing:Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        title: Text('NAME'),
                        subtitle: Text("message"),
                      )
                    ],
                  )
                  ),
                ],
              )
            )*/
           /* Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Image(image: AssetImage('assets/images/igdm-1.jpg'),),
              Text("Message"),
              Icon(Icons.camera_alt_outlined,color: Colors.black,)
            ],)*/
            

        ],
        ),
      ),
      ),
    );
  }
}