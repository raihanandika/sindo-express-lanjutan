import 'package:flutter/material.dart';



class schedule extends StatefulWidget {
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
              child:Stack(
                children: <Widget>[
                    
                    new Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          image:AssetImage("assets/header.png"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),


                  Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      title: 
                        Row(children: <Widget>[
                            Container(child: Icon(Icons.arrow_back) ),

                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Schedule"),),
                          
                      ],)
                    ),
                    backgroundColor: Colors.transparent,
                    body: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width / 1.3,
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                                )
                              ),
                              child: Column(children: <Widget>[


                                        Container(
                                          
                                          padding: EdgeInsets.only( top: 30,right: 10),
                                          child: ExpansionTile(
                                          title: Row(children: <Widget>[
                                            
                                            Container(
                                              child: Icon(Icons.location_on,
                                                 color: Colors.grey,),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text("Port of Loading",
                                              style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Sans",
                                              
                                            ),)
                                            )
                                            

                                            
                                          ],)
                                        ),
                                        ),



                                        Container(
                                          margin: EdgeInsets.only(top: 20 , right: 10),
                                          child: ExpansionTile(
                                          title: Row(children: <Widget>[
                                            
                                            Container(
                                              child: Icon(Icons.location_on,
                                                 color: Colors.grey,),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text("Port of Discharge",
                                              style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Sans"
                                              
                                            ),)
                                            )
                                            

                                            
                                          ],)
                                        ),
                                        ),
                                        

                                         Container(
                                          padding: EdgeInsets.only(top: 20),
                                          width: MediaQuery.of(context).size.width / 1.3,
                                          child: RaisedButton(
                                            child: Text("Search",
                                              style: TextStyle(
                                                color: Colors.white),
                                              ),
                                            color: Colors.red,
                                            onPressed: (){},
                                          ),
                                         )

                              
                              ],),
                            ),
                    
                    
                    )
                    
                      
                
                ],
              
               ) ,     
          );
  }
}