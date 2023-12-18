import 'package:flutter/material.dart';
import 'package:projects/RunLoginPage.dart';

import 'Colors.dart';

class RunIntro1 extends StatelessWidget {
  const RunIntro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 30,)),
        actions: [
          TextButton(
              onPressed: (){}
              , child: Text('Skip',style: TextStyle(color: Colors.white,fontSize: 20),)
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/image21.png',
              width:350 ,
              height: 350,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blueGrey.shade800,
                  border: Border.all(color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(60)
              ),
              height: 320,
              width: 370  ,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Run',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 15,),
                      Text(
                        'lorem ipsum is simply dummy text of the printing and typesetting industry . lorem ipsum has been the industry\'s standard dummy text ever since the 1500s',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17
                      ),),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: 200,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RunLoginPage(),));
                        }, child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Next',style: TextStyle(color: Colors.white ,fontSize: 30),),
                          SizedBox(width: 15,),
                          Icon(Icons.arrow_right_alt_sharp,color: Colors.white,size: 40,)
                        ],
                      ),
                        style: ElevatedButton.styleFrom(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ) ,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                    onPressed: (){}
                    , child: Text('Sign in',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20,)
                ),
                ),
          ],
        ),
        ],
      ),
      ),
    );
  }
}
