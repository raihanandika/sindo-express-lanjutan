import 'package:flutter/material.dart';


class about_us extends StatefulWidget {
  @override
  _about_usState createState() => _about_usState();
}

class _about_usState extends State<about_us> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[

          // background banner
          new Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("assets/header.png"),
                fit: BoxFit.cover
              )
            )
          ),


          // app bar 
               Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: 
                    Row(children: <Widget>[
                    
                        Container(
                          child: Text("About Us",style: TextStyle(color:Colors.white),),
                        )
                  
                      ],
                    )
                ),
                
                backgroundColor: Colors.transparent,

                body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(10),
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
                                        Radius.circular(10)),
                                        color: Colors.white
                                      ),
                                    
                                    child:  ExpansionTile(
                                    title: Text(
                                      "Tentang Sindo Express",
                                      style: TextStyle(
                                        fontFamily: 'sans',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),),
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              "ini adalah tentang sindo express\n",
                                              style: TextStyle(
                                              fontFamily: 'sans',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)) ,)
                                           
                                      ],)
                                     
                                    ],
                                  ),),


                                   Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)),
                                        color: Colors.white
                                      ),
                                    child:  ExpansionTile(
                                    title: Text(
                                      "Visi & Misi",
                                        style: TextStyle(
                                        fontFamily: 'sans',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700)),
                                    children: <Widget>[

                                      Row(children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                          Container(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Visi",
                                            style: TextStyle(
                                            fontFamily: 'sans',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900)),
                                          ),

                                          Container(
                                          padding: EdgeInsets.only(left: 16, top: 5.0),
                                          child: Text(
                                            "Menjadi salah satu perusahaan jasa terbaik\n"
                                            "dalam    bidang     pengiriman   barang      di \n"
                                            "wilayah  Kupang   dan   Timor  daratan,  jasa \n"
                                            "yang   berkualitas,  tepat waktu   serta   ber-\n"
                                            "tanggung  -  jawab   atas   barang     kiriman\n",
                                            style: TextStyle(
                                            fontFamily: 'sans',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                          ),
                                         ],),
                                       ],
                                     ),

                                       Row(children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                          
                                          Container(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Misi",
                                            style: TextStyle(
                                            fontFamily: 'sans',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900)),
                                          ),

                                        

                                          Container(
                                          padding: EdgeInsets.only(left: 15, top: 5.0),
                                          child: Text(
                                            "Meningkatkan     layanan       jasa       secara\n"
                                            "berkesinambungan  sekaligus  memperluas\n"
                                            "jaringan  kerja  dengan  didukung oleh tena-\n"
                                            "ga -  tenaga  ahli  di bidangnya,  profesional,\n"
                                            "berpengalaman      serta     penuh     tanggu-\n"
                                            "ng jawab\n",
                                            style: TextStyle(
                                            fontFamily: 'sans',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                          ),
                                         ],),
                                       ],
                                     ),

                                      
                                      
                                    ],
                                  ),),

                                   Container(
                                     width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)),
                                        color: Colors.white,
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Colors.black38,
                                        //     blurRadius: 4.0,
                                        //     spreadRadius: 1.0,
                                        //     offset: Offset(5.0, 0.0)
                                        //   )
                                        // ]
                                      ),
                                    child:  ExpansionTile(
                                    title: Text(
                                      "Galeri",
                                      style: TextStyle(
                                        fontFamily: 'sans',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700)),
                                    children: <Widget>[
                                     Row(children: <Widget>[
                                       Container(
                                         padding: EdgeInsets.only(left: 20),
                                         child:  Text(
                                           "ini adalah galeri sindo express\n",
                                           style: TextStyle(
                                            fontFamily: 'sans',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)
                                           ),)
                                     ],)
                                    ],
                                  ),),

                                 ],),

                                  
                    ],
                  ),
                  )
                )
              ),


        ],
      ),
    );

    

  }
}