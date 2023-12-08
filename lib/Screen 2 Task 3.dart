import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class User {
  String? name;
  String? text;


  User(
  {this.name,this.text}
      );
}

List users = [
  User( name: 'Ali Eid',text: 'Welcome to flutter'),
  User( name: 'Omar Ahmed',text: 'Welcome to anything'),
  User( name: 'Eslam Medhat',text: 'Welcome to flutter & firebase'),
  User( name: 'Ahmed Emad',text: 'Welcome to Backend'),
  User( name: 'Asim Ayman',text: 'Welcome to Front-End'),
  User( name: 'Youssef Elgebaly',text: 'Welcome to JS'),
  User( name: 'Mohamed Saad',text: 'Welcome to Assignment'),
  User( name: 'Ahmed Essam',text: 'Welcome to Youtube'),
  User( name: 'Nada Esmail',text: 'Welcome to Python'),
  User( name: 'Mohamed Ahmed',text: 'Welcome to Dart'),
  User( name: 'Ahmed Eslam',text: 'Welcome to Algorithms'),
  User( name: 'Hamada Fayad',text: 'Welcome to our team'),
];

List name = [
  User( name: 'Ali'),
  User( name: 'Omar '),
  User( name: 'Eslam '),
  User( name: 'Ahmed'),
  User( name: 'Asim '),
  User( name: 'Youssef'),
  User( name: 'Mohamed'),
  User( name: 'Ahmed'),
  User( name: 'Nada'),
  User( name: 'Mohamed'),
  User( name: 'Ahmed'),
  User( name: 'Hamada'),
];

class Screen2Task3 extends StatelessWidget {
  const Screen2Task3({super.key});


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
                          Text(name[index].name, style: TextStyle(color: Colors.white,),)
                        ],
                      ),
                  separatorBuilder: (context, index) =>
                      SizedBox(width: 15,),
                  itemCount: name.length),
            ),
            SizedBox(height: 15,),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                            Text(users[index].name, style: TextStyle(color: Colors.white,),),
                            SizedBox(height: 5,),
                            Container(
                              width: 335,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(users[index].text, style: TextStyle(color: Colors.white,),),
                                  Text('11:37 PM', style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                separatorBuilder: (context, index) =>
                    SizedBox(height: 15,),
                itemCount: users.length)
          ],
        ),
      ),
    );
  }
}
