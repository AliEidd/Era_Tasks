import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


abstract class User{
  String? userName;
  String? image;

  User({this.userName,this.image});
}

class Posts extends User{
  String? postImage;

  Posts({super.image,super.userName,this.postImage});
}

List posts = [
  Posts(userName: 'Ali Eid', image: 'images/image15.jpg',postImage: 'images/image11.png'),
  Posts(userName: 'Ahmed Saleh', image:'images/image16.jpg', postImage: 'images/image18.png' ),
  Posts(userName: 'Mohamed ayman ', image: 'images/image17.jpg',postImage: 'images/image19.png')

];


class InstaPage extends StatelessWidget {
  const InstaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 120,
        leading: Row(
          children: [
            Text('Instagram',style: TextStyle(color: Colors.white,fontSize: 20),),
            Icon(Icons.keyboard_arrow_down,color: Colors.white,)
          ],
        ),
        actions: [
          Icon(MdiIcons.plusBoxOutline,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(MdiIcons.heartOutline,color: Colors.white,),
          SizedBox(width: 20,),
          Stack(
            alignment: Alignment.topRight,
              children: [
                Container(
                  height: 30,
                    child: Image.asset('images/image9.png', color: Colors.white,height: 20,width: 20,)),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                    alignment: Alignment.center,
                    child: PositionedDirectional(
                      end: 20,
                        child: Text('6',style: TextStyle(color: Colors.white  ,fontSize: 8),)))
              ]
          ),
          SizedBox(width: 20,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        showUnselectedLabels: !true,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home_filled),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_sharp),
              label: 'videos'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.shopping_bag_outlined),
              label: 'shop'
          ),
          BottomNavigationBarItem(
              icon:CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: Image.asset('images/image12.png',color: Colors.white, height: 30, width: 30,fit: BoxFit.contain,).image,
              ),
              label: 'profile'
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            backgroundImage: Image.asset(posts[index].image,color: Colors.white, height: 30, width: 30,fit: BoxFit.contain,).image,
                          ),
                          SizedBox(width: 20,),
                          Text(posts[index].userName,style: TextStyle(fontSize: 20,color: Colors.white),),
                          Spacer(flex: 5,),
                          Expanded(child: Icon(MdiIcons.dotsHorizontal,color: Colors.white,)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Image.asset(posts[index].postImage),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.favorite_border,color: Colors.white,size: 30,),
                          SizedBox(width: 10,),
                          Icon(MdiIcons.chatOutline,color: Colors.white,size: 30),
                          SizedBox(width: 10,),
                          Icon(MdiIcons.sendVariantOutline,color: Colors.white,size: 30),
                          Expanded(child: Image.asset('images/image14.png',height: 50,width: 50,color: Colors.grey,)),
                          Icon(Icons.bookmark_outline,color: Colors.white,size: 30,),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: Image.asset('images/image13.png',fit: BoxFit.contain,).image,
                          ),
                          SizedBox(width: 10,),
                          Text('Liked by flutter.deviser and 44 others',style: TextStyle(color: Colors.white, fontSize: 15),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text('dude.coder Firebase In-App Messaging helps you engage you app\'s active by sending them targeted .... more',
                        style: TextStyle(color: Colors.white,fontSize: 15),),
                      SizedBox(height: 5,),
                      Text('View 1 comment',style: TextStyle(color: Colors.grey,fontSize: 17),)

                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) =>
          SizedBox(height: 15,),
          itemCount: posts.length
      )
    );
  }
}
