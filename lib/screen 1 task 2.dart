import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_rounded,color: Colors.white,size: 40,),
                  Icon(Icons.light_mode_outlined,color: Colors.white,size: 40,),
                ],
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: Image.asset('images/image2.jpg').image,
            ),
            SizedBox(height: 15,),
            Text('Nicol Adams',style: TextStyle(
              color: Colors.white,fontSize: 30,
            ),
            ),
            SizedBox(height: 10,),
            Text('nicoladams@gmail.com',style: TextStyle(
                color: Colors.grey,
                fontSize: 20
            ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 220,
              height: 40,
              child: ElevatedButton(
                onPressed: (){}, child:
              Text('Upgrade to PRO',style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    minimumSize: Size(20, 30)
                ),
              ),
            ),
            SizedBox(height: 25,),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
                child:Row(
                  children: [
                    Icon(Icons.shield, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text('Privacy',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
                child:Row(
                  children: [
                    Icon(Icons.history, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text('Purchase history',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
                child:Row(
                  children: [
                    Icon(MdiIcons.helpCircleOutline, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text('Help & Support',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
                child:Row(
                  children: [
                    Icon(Icons.settings, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
                child:Row(
                  children: [
                    Icon(MdiIcons.accountPlus, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text('Invite a Friend',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
                child:Row(
                  children: [
                    Icon(Icons.logout, color: Colors.white, size: 30,),
                    SizedBox(width: 10,),
                    Text('Logout',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
