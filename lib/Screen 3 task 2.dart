import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text(
                'Sign Up ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height:5 ,),
              Text(
                'Please sign up to entre in the app',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 100,),
              Text(
                'Entre via social networks',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height:30 ,),
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
              SizedBox(height:40 ,),
              Text(
                'or sign up with email',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(8),
                height: 45,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignInside
                    )
                ),
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(8),
                height: 45,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignInside
                    )
                ),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(
                    Icons.radio_button_checked,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'i agree with Privacy Policy',
                    style:TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ?',
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
