import 'package:bus_track/HomeScreens/SearchScreen.dart';
import 'package:bus_track/HomeScreens/Sidebar.dart';
import 'package:bus_track/Maps/MapTiler.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// Gif splash

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF0C414), // Include the sidebar here
      ),
      drawer: CommonSidebar(),
      body: Stack(
        children: [
          Container(
            color: Color(0xffF0C414),
          ),

          MapScreen(),

          Padding(
            padding: EdgeInsets.only(left:15,right:15,top:20),
            child:Positioned(
              left:0.0,
              right: 0.0,
              top: 30.0,
              child:InkWell(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ),
                  );
              },
                child:Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          spreadRadius: 0.2,
                          offset: Offset(0.2,0.2),
                        ),
                      ]
                  ),

                  child:Padding(
                    padding: EdgeInsets.all(12.0),
                    child:Row(
                      children: [
                        Icon(Icons.search,color: Color(0xffF0C414),),
                        SizedBox(width:10),
                        Text("Search Destination")
                      ],
                    ),
                  ),

                ),

              ),

            ),

          ),


          // Positioned(
          //   left:0.0,
          //   right: 0.0,
          //   bottom: 0.0,
          //   child:Container(
          //     height:245.0,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black,
          //           blurRadius: 16.0,
          //           spreadRadius: 0.5,
          //           offset: Offset(0.7,0.7),
          //         ),
          //       ]
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           SizedBox(height:6.0),
          //           Text("Hi there",style: TextStyle(fontSize: 12),),
          //           Text("Where to?",style: TextStyle(fontSize: 20),),
          //
          //           SizedBox(height:20.0),
          //
          //       Container(
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(5.0),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: Colors.black,
          //                 blurRadius: 10.0,
          //                 spreadRadius: 0.2,
          //                 offset: Offset(0.2,0.2),
          //               ),
          //             ]
          //         ),
          //
          //         child:Padding(
          //           padding: EdgeInsets.all(12.0),
          //           child:Row(
          //             children: [
          //               Icon(Icons.search,color: Color(0xffF0C414),),
          //               SizedBox(width:10),
          //               Text("Search Destination")
          //             ],
          //           ),
          //         ),
          //
          //       ),
          //
          //           SizedBox(height:24.0),
          //         ],
          //       ),
          //     ),
          //
          //   ),
          // ),
        ],
      ),
    );
  }
}