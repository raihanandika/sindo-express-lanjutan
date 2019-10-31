import 'package:flutter/material.dart';
import 'package:sindo_express/screen/about_us.dart';
import 'package:sindo_express/screen/news.dart';
import 'package:sindo_express/screen/tracking.dart';
import 'package:sindo_express/screen/schedule.dart';
import 'package:sindo_express/screen/message.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

   int selectedIndex = 0;
  
  void onNavbarTaped(int index){
    setState(() {
     selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {

    final pages = [

        //home(),
        message()
        
    ];


    final bottomNavBarItems = <BottomNavigationBarItem>[

      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text("Home")
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.message),
        title: Text("Message")
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text("Profile")
      )
    ];


    final bottomNavBar = BottomNavigationBar(
      items: bottomNavBarItems,
      currentIndex: selectedIndex,
      onTap: onNavbarTaped,
    );

    return SafeArea(
      child: Scaffold(
       // backgroundColor: Colors.grey,  color body
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          actions: <Widget>[
            
             new Container(
               padding: EdgeInsets.only(right: 15, left: 10),
               width: (MediaQuery.of(context).size.width),
               child: new Row(
                 
            
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[

                   new Image.asset(
                     'assets/SINDO_EXPRESS_TEXT.png',
                     width: 150,
                     ),

                    new Image.asset(
                      'assets/NOTIFICATION.png',
                       width: 30,)
                 ],
               ),
             )
          ],
        ),
      body:Column(children: <Widget>[
        Container(child: body()),
       
      ],),
        bottomNavigationBar: bottomNavBar
        
      ),
    );

  }
}

class body extends StatefulWidget {
  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {

//   // start bottom navigation bar

// int selectedIndex = 0;

// void onNavbarTaped(int index){
//   setState(() {
//     selectedIndex = index;
//   });
// }

// // end bottom navigation bar
  @override
  Widget build(BuildContext context) {

    //    final pages = [

    //     home(),
    //     message(),
    // ];


    // final bottomNavBarItems = <BottomNavigationBarItem>[

    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.home),
    //     title: Text("Homee")
    //   ),

    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.message),
    //     title: Text("Message")
    //   ),

    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.person),
    //     title: Text("Profile")
    //   )
    // ];


    // final bottomNavBar = BottomNavigationBar(
    //   items: bottomNavBarItems,
    //   currentIndex: selectedIndex,
    //   onTap: onNavbarTaped,
    // );



    return Column(

      children: <Widget>[
      
      Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/BANNER.png"),
      ),

      Row(children: <Widget>[
         Container(
           padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 13),
           child:  Text(
            "Our Service",
             style: TextStyle(
              fontSize: 20,
              fontFamily: "sans",
              fontWeight: FontWeight.w900),
              ),
         )
        ],
      ),


      
      Row(children: <Widget>[

          Container(
            margin: EdgeInsets.only(left: 15, top: 10),
            padding: EdgeInsets.only(top: 20),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_){
                return tracking();
              }));
              },
              child: Column(
              children: <Widget>[
              Image.asset('assets/TRACKING.png',
              width: 53,),
              Text("Tracking")
            ],),
            )
          ),


          Container(
            margin: EdgeInsets.only(left: 15, top: 10),
            padding: EdgeInsets.only(top: 22),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: InkWell(
              onTap: (){
                 Navigator.of(context).pushReplacement(
                   MaterialPageRoute(builder: (_){
                     return schedule();
                   })
                 );
              },
              child: Column(
              children: <Widget>[
              Image.asset('assets/SCHEDULE.png',
              width: 53,),
              Text("Schedule")
            ],
            )
          ),
          ),
          
          Container(
            margin: EdgeInsets.only(left: 15, top: 10),
            padding: EdgeInsets.only(top: 25),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: InkWell(
              onTap: (){
                  Navigator.of(context).push(
              MaterialPageRoute(builder: (_){
                return news();
              }));
              },
              child: Column(
              children: <Widget>[
              Image.asset('assets/NEWS.png',
              width: 50,),
              Text("News")
            ],),
            )
          ),
      ],),


      Row(children: <Widget>[

          Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            padding: EdgeInsets.only(top: 15),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: InkWell(
              onTap: (){
                 Navigator.of(context).push(
              MaterialPageRoute(builder: (_){
                return about_us();
              }));
              },
              child: Column(
              children: <Widget>[
              Image.asset('assets/about-us.png',
              width: 60,),
              Text("About Us")
            ],),
            )
          ),


          Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            padding: EdgeInsets.only(top: 15),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: Column(
              children: <Widget>[
              Image.asset('assets/CHAT.png',
              width: 60,),
              Text("Chat")
            ],)
          ),

          
          Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            padding: EdgeInsets.only(top: 18),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
             child:  
            Column(
              children: <Widget>[
              Image.asset('assets/ICON-PTSINDO.png',
              width: 50,),
              Text("Online"),
              Text("Booking")
            ],)
          ),
      ],),


      Row(children: <Widget>[
       
      ],),

   
   

      ],
    );

  }
}


