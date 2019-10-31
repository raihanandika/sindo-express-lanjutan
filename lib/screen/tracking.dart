import 'package:flutter/material.dart';
import 'package:sindo_express/screen/home.dart';

class tracking extends StatefulWidget {
  @override
  _trackingState createState() => _trackingState();
}

class _trackingState extends State<tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        backgroundColor: Colors.white,     
          actions: <Widget>[

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 15,),
            child: new Row(
              children: <Widget>[

                Container(
                  child: Icon(Icons.arrow_back, color: Colors.black, size: 30,),
                  ),

                Container(
                  child: Text("  Tracking",
                    style: TextStyle(
                      fontSize: 25, 
                      color: Colors.black,
                      fontFamily: "sans"),
                  ),
                ),
              ],
            ) ,  
          )
            ],
          ),
          body: bodyTracking(),
      );    
  }
}



class bodyTracking extends StatefulWidget {
  @override
  _bodyTrackingState createState() => _bodyTrackingState();
}

class _bodyTrackingState extends State<bodyTracking> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BACKGROUND.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(children: <Widget>[

              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                     bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(1.0, 1.0)
                    )
                  ]
                ),
                child: DefaultTabController(
                        length: 2,
                        child: Column(children: <Widget>[

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0)
                              )
                            ) ,
                            child: TabBar(
                            tabs: <Widget>[
                                  Tab(text: "Quick Tracking",),
                                  Tab(text: "Advanced Tracking",)
                              ],
                            ),
                          ),

                       Row(children: <Widget>[
                         Container(
                            padding: EdgeInsets.only(left: 30, right: 30, bottom: 60),
                           decoration: BoxDecoration(
                              color: Colors.white,
                             borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(15.0),
                               bottomRight: Radius.circular(15.0)
                             )
                           ),
                           width: MediaQuery.of(context).size.width - 40,
                           height: 242,
                           child: TabBarView(
                             children: <Widget>[
                               Center(
                                 child:  TextFormField(
                                          decoration: InputDecoration(
                                          icon: Icon(Icons.confirmation_number),
                                          labelText:  'Container Number'
                                              ),
                                         )
                               ),
                               Center(child: Text("Page Advanced Tracking"),)
                             ],
                           )
                         )
                       ],)
                          
                        ],)
                ),
              ),

              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.width  - 300,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.only(
              //      bottomLeft: Radius.circular(15.0),
              //       bottomRight: Radius.circular(15.0)
              //     ),
              //   ),
              //    )
        ])
        
      
    );
  }
}