import 'package:flutter/material.dart';

class news extends StatefulWidget {
  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage("assets/header.png"),
              fit: BoxFit.cover )
          ),
        ),

        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text("News",style: TextStyle(color:Colors.white),),
                    )
            ],),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Column(children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5)
                        ),
                        color: Colors.white
                       
                      ),
                      child: Column(children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SafeArea(child: 
                                  Stack(children: <Widget>[

                                          Container(  
                                              width: MediaQuery.of(context).size.width,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: AssetImage("assets/TRUCK_CONTAINER.png"),
                                                  fit: BoxFit.cover
                                                ),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    color:Colors.black12,
                                                    offset: Offset(1.0, 1.0) )
                                                ]
                                              ),
                                        
                                                child: Container(
                                                  margin: EdgeInsets.only(top: 120),
                                                  padding: EdgeInsets.only(left: 10,top: 10, bottom: 10),
                                                 decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.only(
                                                      bottomLeft: Radius.circular(10),
                                                      bottomRight: Radius.circular(10),
                                                    ),
                                                  ),
                                                  child:
                                                  
                                                  Text("Keberangkatan  barang  terakhir tanggal 28 mei  "
                                                              "Penerimaan   barang   terakhir  tanggal  27  mei  "
                                                              "Lebaran tanggal 1 Juni s/d 9 Juni Buka kembali  "
                                                              "tanggal 10 juni"),
                                                ),
                                      ),


                                      


                                      





                                    
                            
                                    // new Container(
                                    //    child: 
                                    //    //Image.asset("assets/TRUCK_CONTAINER.png",fit: BoxFit.cover,),
                                    //    Column(children: <Widget>[
                                    //     Image.asset("assets/TRUCK_CONTAINER.png",fit: BoxFit.cover,),
                                    //     Text("qwkwkwkwk")
                                        
                                    //    ],)
                                    // )

                          ],),)
                          ),
                          
                      ],))
                  ],)
                ],
              ),
            ),
          ),
        )
      ],),
    );
  }
}