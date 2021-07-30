import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
var items = [
 "https://raw.githubusercontent.com/AmmarMohib/Economic-app/master/lib/1.jpeg"
];
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
          debugShowCheckedModeBanner: false,
      title: "Economic app",
     home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(


      home: Scaffold(
                
        appBar: AppBar(title: Text("Economic app",style: TextStyle(color: Colors.black,fontFamily: 'Lobster',fontWeight: FontWeight.w600,fontSize: 30),),     
        actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.notifications_active,
        color: Colors.black,
      ),
      onPressed: () {
        print(Text("hello"));
      },
    )
  ],centerTitle: true,backgroundColor: Colors.white,
        ),
        body:GridView.count(
                    childAspectRatio: (45/15),

          crossAxisCount: 1,
          mainAxisSpacing: 20,
          children: List.generate(items.length , (index) {
         return Padding(
           padding: const EdgeInsets.only(left:20.0,right: 20.0,top: 30.0),
           child:ClipRRect(
             borderRadius: BorderRadius.circular(10),
             child: Container(
                color: Colors.white,
                child: Center(child: Column(
                  children: [
                    GridTile(
                    child: Title(
                      color: Colors.red,
                      child: Row(
                       children: [
                         Container(
                           child:ClipRRect(
             borderRadius: BorderRadius.circular(10),
                           child:
                          Image.network(items[index],height: 100,)
                         )
                         )
                       ], 
                      )
                    )),
                  ])
                ),
                ),
              ),
           );
          })
          )
      ), 
    );
  }
}