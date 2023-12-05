import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text(
                'Welcome ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height:5 ,),
              Text(
                'Please login or sign up to continue using out app',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Image.asset(
                'images/image6.png',
                height: 350,
                width: double.infinity,

              ),
              Text(
                'Entre via social networks',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height:20 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)
                        ),
                      ) ,
                      child: Icon(MdiIcons.twitter, color: Colors.white,size: 45,)
                  ),
                  SizedBox(width: 30,),
                  ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900 ,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                        ),
                      ) ,
                      child: Icon(MdiIcons.facebook, color: Colors.white,size: 45,)
                  ),
                ],
              ),
              SizedBox(height:30 ,),
              Text(
                'or login with email',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    minimumSize: Size(350, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ) ,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account ?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
