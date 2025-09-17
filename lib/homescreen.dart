import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_home_ui/components/appliances.dart';
import 'package:smart_home_ui/components/roomspecappliance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHome = true;
  bool isSetting = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/profilePic.jpg'),
                radius: 18,)
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {}, 
            icon: Icon(CupertinoIcons.list_dash),
            color: Colors.grey.shade400,
          ),
            
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'My Smart Home',style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              BoxShadow(
                                color:Colors.grey.withValues(alpha: 0.5),
                                blurRadius: 3,
                                offset: Offset(2,3)
                              )
                            ]
                          ),
                        ),
                      ),  
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Appliance(
                          colour: Colors.yellow,
                          icon: Icons.lightbulb,
                          label: "Light",
                        ),
                    
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
                        ),
                    
                        Appliance(
                          colour: Colors.blue,
                          icon: Icons.play_circle_fill_outlined,
                          label: "Media",
                        ),
                    
                      ],
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Appliance(
                          colour: Colors.red,
                          icon: Icons.videocam_rounded,
                          label: "Camera",
                        ),
                    
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.03,
                        ),
                    
                        Appliance(
                          colour: Colors.green,
                          icon: Icons.wifi,
                          label: "Wi-Fi",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding:EdgeInsetsGeometry.only(
                          left: 20.0,
                          top: 20.0
                        ),
                        child: Text(
                          "Living Room",style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              BoxShadow(
                                color:Colors.grey.withValues(alpha: 0.5),
                                blurRadius: 3,
                                offset: Offset(2,3)
                              )
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(
                          left: 20.0,
                          top: 10.0,
                        ),
                        child: Text(
                          "2 devices",style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Row(
                      children: [
                        RoomSpecAppliance(
                          imgpath:"images/wifi-router.png",
                          label: "Netgear Wifi",
                          imgWidth:0.2,
                          imgHeight:0.2,
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.05,
                  ),
                  RoomSpecAppliance(
                          imgpath:"images/air-conditioner.png",
                          label: "Living Room AC",
                          imgWidth:0.24,
                          imgHeight:0.3,
                          )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.3),
                          offset: Offset(0,-2),
                          blurRadius: 2,
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: isHome?Colors.blue:Colors.grey,
                          ),
                          onPressed:(){
                            setState(() {
                              isHome = true;
                              isSetting = false;
                            });
                          }
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: isSetting?Colors.blue:Colors.grey,
                          ),
                          onPressed:(){
                            setState(() {
                              isHome = false;
                              isSetting = true;
                            });
                          }
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 5,
                          left: 5,
                          right: 5
                          ),
                          width: 65,
                          height: 65,
                        decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              offset: Offset(0, 2),
                              blurRadius: 2
                           )
                          ],
                          color: Colors.white
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent.shade700,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.3),
                                offset: Offset(0, 2),
                                blurRadius: 2
                              )
                            ]
                          ),
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                    
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
} 