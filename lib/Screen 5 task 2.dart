import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 100,
        leading:
        CircleAvatar(
          radius: 30,
          backgroundImage: Image.asset(
            'images/image5.jpg',
            fit: BoxFit.contain,).image,
        ),
        title: Text('Chats',style: TextStyle(fontSize: 30,color: Colors.white),),
        actions: [
          CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey.shade600,
              child: Icon(Icons.camera_alt,color: Colors.white,size: 30,)),
          SizedBox(width: 10,),

          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.grey.shade600,
            child: Icon(MdiIcons.pencil,color: Colors.white,size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(25),
        
                  ),
                  height: 50,
                  width: 380,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search,size: 30,color: Colors.grey,),
                      SizedBox(width: 20,),
                      Text('Search',style: TextStyle(color: Colors.grey,fontSize: 25),)
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                 Column(
                   children: [
                     Stack(
                       children: [
                         Align(
                           alignment: AlignmentDirectional.topStart,
                           child: CircleAvatar(
                      radius: 30,
                      backgroundImage: Image.asset('images/image5.jpg', fit: BoxFit.contain,).image,
                                   ),
                                 ),
                                 PositionedDirectional(
                                   start: 15,
                                   bottom: -25,
                                   child: Icon(MdiIcons.circleSmall,size: 70,color: Colors.green.shade600,
                                   ),
                                 )
                          ],
                        ),
                     Text('Ali Eid', style: TextStyle(color: Colors.white,),)
                   ],
                 ),
                  separatorBuilder: (context, index) =>
                  SizedBox(width: 15,),
                  itemCount: 15),
            ),
            SizedBox(height: 15,),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    Row(
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: Image.asset('images/image5.jpg', fit: BoxFit.contain,).image,
                              ),
                            ),
                            PositionedDirectional(
                              start: 15,
                              bottom: -25,
                              child: Icon(MdiIcons.circleSmall,size: 70,color: Colors.green.shade600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ali Eid', style: TextStyle(color: Colors.white,),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Welcome to flutter', style: TextStyle(color: Colors.white,),),
                                SizedBox(width: 150),
                                Text('11:37 PM', style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                separatorBuilder: (context, index) =>
                SizedBox(height: 15,),
                itemCount: 20)
          ],
        ),
      ),
    );
  }
}
