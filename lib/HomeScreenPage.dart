import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:
        [
          Colors.deepPurpleAccent.shade200,
          Colors.red.shade100
        ])

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 300,
          leading: Builder(
            builder: (BuildContext context) {
              return Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white, // Change Custom Drawer Icon Color
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                  CircleAvatar(
                    radius: 40, // Image radius
                    backgroundImage: AssetImage('images/image2.jpg'),
                  ),
                  Column(
                    children: [
                      Text('Hello !',style: TextStyle(color: Colors.white,fontSize: 15),),
                      Text('Daniela',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  )

                ],
              );

            },

          ),

          actions: [
            Icon(Icons.inbox_outlined,color: Colors.white,size: 30,),
            SizedBox(width: 15,),
            Icon(Icons.mark_email_unread_outlined,color: Colors.white,size: 30,),
            SizedBox(width: 20,),
          ],
        ),
        drawer: Drawer(),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('14,000',style: TextStyle(color: Colors.grey,fontSize: 17),),
                      SizedBox(width: 6,),
                      Text('/',style: TextStyle(color: Colors.grey,fontSize: 17)),
                      SizedBox(width: 6,),
                      Text('15,000',style: TextStyle(color: Colors.white,fontSize: 20)),
                      SizedBox(width: 6,),
                      Expanded(child: Text('steps',style: TextStyle(color: Colors.grey,fontSize: 17))),
                       Text('Level 5',style: TextStyle(color: Colors.yellow.shade600,fontSize: 20)),
                      SizedBox( width: 8,),
                      CircleAvatar(
                        radius: 30, // Image radius
                        backgroundColor: Colors.blue.shade100,
                        child: Image.asset('images/image37.png',height: 50,width: 50,),

                      ),
                    ],
                  ),
                  LinearPercentIndicator(
                    backgroundColor: Colors.white,
                    width: 320,
                    percent: 0.7,
                    barRadius: Radius.circular(20),
                    lineHeight: 15,
                    linearGradient: LinearGradient(colors: [
                      Colors.deepPurpleAccent,
                      Colors.green
                    ]
                    ),

                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(color: Colors.black12,
                        border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 122,
                    width: double.infinity  ,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(color: Colors.deepPurpleAccent,
                                        borderRadius: BorderRadius.circular(60)
                                    ),
                                    height: 80,
                                    width: 80,
                                    child: Image.asset('images/image33.png',fit: BoxFit.contain,),
                                  ),
                                  PositionedDirectional(
                                    top: 22,
                                      end: -30,
                                      child: Icon(MdiIcons.circleSmall,color: Colors.green,size:90,))
                                ]
                              ) ,
                            ],
                          ) ,
                          SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('26 may',style: TextStyle(color: Colors.white60,fontSize: 15),),
                                Text('Today',style: TextStyle(color: Colors.green,fontSize: 15)),
                                Text('01: 09: 44',style: TextStyle(color: Colors.white,fontSize: 15)),
                              ],
                            ),
                          ),
                          CircularPercentIndicator(
                            radius: 40.0,
                            lineWidth: 5.0,
                            percent: 0.6,
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.red,
                            linearGradient: LinearGradient(colors: [
                              Colors.grey,
                              Colors.deepPurpleAccent
                            ]
                            ),
                            center: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset('images/image34.png',height: 20,width: 20,),
                                  SizedBox(
                                    height: double.infinity,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('2345',style: TextStyle(color: Colors.white60),),
                                        Container(
                                          width: 35,
                                          height: 1,
                                          color: Colors.grey,
                                        ),
                                        Text('5000',style: TextStyle(color: Colors.green),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                    Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                Colors.blue.shade300,
                Colors.pinkAccent.shade100
              ]
              ),
              border: Border.all(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(20)
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: 180,
                    width: double.infinity  ,
                    child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                                        Text('Share & Get',style: TextStyle(color: Colors.white,fontSize: 25),),
                                                        Text('Get 2x point for every steps, only valid for today',style: TextStyle(color: Colors.white,fontSize: 16)),
                                                        Container(
                                                          width: 100,
                                                          height: 40,
                                                          decoration: BoxDecoration(
                                                            color: Colors.black12,
                                                            borderRadius: BorderRadius.circular(30),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(Icons.share_outlined,color: Colors.white,),
                                                              SizedBox(width: 5),
                                                              Text('Share',style: TextStyle(color: Colors.white),)
                                                            ],
                                                          ),
                                                        )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                      child: Image.asset('images/image38.png',height: 150,width: 150,))
                                ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(color: Colors.black12,
                              border: Border.all(color: Colors.grey.shade700),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 150,
                          width: 185,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('53,524',style: TextStyle(color: Colors.white,fontSize: 35),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('images/image35.png',color: Colors.white,height: 30,width: 30,),
                                  SizedBox(width: 5,),
                                  Text('Steps',style: TextStyle(color: Colors.white,fontSize: 20),)
                                ],
                              )
                            ],

                          ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(color: Colors.black12,
                            border: Border.all(color: Colors.grey.shade700),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        height: 150,
                        width: 185,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1000',style: TextStyle(color: Colors.white,fontSize: 35),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/image36.png',color: Colors.white,height: 30,width: 30,),
                                SizedBox(width: 5,),
                                Text('Earned Points',style: TextStyle(color: Colors.white,fontSize: 17),)
                              ],
                            )
                          ],

                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('History',style: TextStyle(color: Colors.white,fontSize: 20),),
                      TextButton(onPressed: (){}, child: Text('See All',style: TextStyle(color: Colors.deepPurple,fontSize: 20),)),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black12,
                        border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 100,
                    width: double.infinity  ,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('27 May',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 25),),
                              Row(
                                children: [
                                  Text('12,4 km',style: TextStyle(color: Colors.red.shade700,fontSize: 15),),
                                  Icon(MdiIcons.circleSmall,color: Colors.white,size: 15,),
                                  Text('12,4 Km',style: TextStyle(color: Colors.grey.shade800,fontSize: 15),),
                                  Icon(MdiIcons.circleSmall,color: Colors.white,size: 15,),
                                  Text('1222 kcal',style:TextStyle(color: Colors.grey.shade800,fontSize: 15))
                                ],
                              ),
                            ],
                          ) ,
                          Row(
                            children: [
                              Text('10,120',style :TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                              SizedBox(width: 5,),
                              Text('Steps',style :TextStyle(color: Colors.white,fontSize: 17))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(color: Colors.black12,
                        border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 100,
                    width: double.infinity  ,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('26 May',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 25),),
                              Row(
                                children: [
                                  Text('12,4 km',style: TextStyle(color: Colors.red.shade700,fontSize: 15),),
                                  Icon(MdiIcons.circleSmall,color: Colors.white,size: 15,),
                                  Text('12,4 Km',style: TextStyle(color: Colors.grey.shade800,fontSize: 15),),
                                  Icon(MdiIcons.circleSmall,color: Colors.white,size: 15,),
                                  Text('1222 kcal',style:TextStyle(color: Colors.grey.shade800,fontSize: 15))
                                ],
                              ),
                            ],
                          ) ,
                          Row(
                            children: [
                              Text('10,120',style :TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                              SizedBox(width: 5,),
                              Text('Steps',style :TextStyle(color: Colors.white,fontSize: 17))
                            ],
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
