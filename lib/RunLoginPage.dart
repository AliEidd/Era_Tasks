import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';




class RunLoginPage extends StatefulWidget {
  const RunLoginPage({super.key});

  @override
  State<RunLoginPage> createState() => _RunLoginPageState();
}

class _RunLoginPageState extends State<RunLoginPage> {
  @override
  String pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWord = TextEditingController();
  bool obscure = true;



  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        leading: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 30,),

      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                  'images/image20.png',
                height: 130,
                width: 130,
              ),
              Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.white
                      ),
                    ),
                    prefixIcon: Icon(Icons.email,color: Colors.deepPurple,),
                    hintText: 'Email'
                ),
                validator: (value){
                  if ((value ?? '').isEmpty){
                    return 'Please , Entre your Email';
                  } else if (!RegExp(pattern)
                      .hasMatch(value ?? '')){
                    return 'Please Entre a valid email';
                  } return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: passWord,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.white
                      ),
                    ),
                    prefixIcon: Icon(Icons.key,color: Colors.deepPurple,),
                    hintText: 'Password',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        obscure = !obscure;
                      });
                    }, icon: Icon(obscure? Icons.visibility : Icons.visibility_off,
                      color: obscure? Colors.deepPurple : Colors.grey,)
                    )
                ),
                obscureText: obscure,
                obscuringCharacter: '*',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if((value ?? '').isEmpty){
                    return 'please, entre your password';
                  } else if (!RegExp(r'[A-Z]').hasMatch(value ?? '')){
                    return 'Password must contain at least one capital letter';
                  } else if (!RegExp(r'[0-9]').hasMatch(value ?? '')){
                    return 'Password must contain at least one number';
                  } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value ??'')){
                    return 'Password must contain at least one special character';
                  }else if((value?.length ?? 0) < 8){
                    return 'Password Can\'t be less than 8 charachters';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_box_rounded,size: 20,color: Colors.deepPurple,),
                  SizedBox(width: 5,),
                  Expanded(child: Text('Remember Me',style: TextStyle(color: Colors.white,fontSize: 15),)),
                  TextButton(
                      onPressed: (){}
                      , child: Text('Forgot Password ?',style: TextStyle(color: Colors.deepPurple,fontSize: 15,fontWeight: FontWeight.bold),)
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width:100,child: Divider(
                      color: Colors.grey,
                    )),

                    Text("or continue with",style: TextStyle(color: Colors.grey,fontSize: 15),),

                    SizedBox(
                        width:100,
                        child: Divider(
                          color: Colors.grey,
                        )
                    ),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: 80,
                    width: 80,
                    child: Icon(MdiIcons.google,color: Colors.red,size: 43,),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: 80,
                    width: 80,
                    child: Icon(MdiIcons.facebook,color: Colors.blue,size: 43,),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: 80,
                    width: 80,
                    child: Icon(MdiIcons.twitter,color: Colors.lightBlue,size: 43,),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New Here ?',style: TextStyle(color: Colors.white,fontSize: 20),),
                  TextButton(
                      onPressed: (){}
                      , child: Text('Sign up',style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),)
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
