import 'package:flutter/material.dart';
import 'RunAppIntro1.dart';
import 'Colors.dart';

class GetStardedPage extends StatelessWidget {
  const GetStardedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: primary,
      body: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: Image.asset('images/image28.png',fit: BoxFit.cover,).image)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Running App',style: TextStyle(color: Colors.white,fontSize: 30),),
              Text('Run and earn with our app. Some text Example will be her',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 20,)),
              SizedBox(height: 30,),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RunIntro1(),));
                  }, child:
                Text('Get Started',style: TextStyle(color: Colors.white ,fontSize: 30),),
                  style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ) ,
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              SizedBox(height: 40,),

            ],
          ),
        ),
      ),

    );
  }
}
