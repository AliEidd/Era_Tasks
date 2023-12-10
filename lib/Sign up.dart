import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginState();
}

class _LoginState extends State<SignUp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWord = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        bottom: false,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.close, color: Colors.white,),
                          SizedBox(height: 30,),
                          Text('Create Your account',style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    SizedBox(width: 12,),
                    Image.asset('images/image7.png',width: 210,height: 150,),
                  ],
                ),
              ),
              Expanded(child:
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Syndicate ID No :',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Colors.white
                              ),
                            ),
                            hintText: 'Entre your Syndicate ID No'
                        ),
                        validator: (value){
                          if ((value ?? '').isEmpty){
                            return 'Please , Entre your Syndicate ID No';
                          } else if (RegExp(r"[0-9]")
                              .hasMatch(value ?? '')){
                            return 'Please Entre a valid Syndicate ID No';
                          } return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(height: 5,),
                      Text('Email',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Colors.white
                              ),
                            ),
                            prefixIcon: Icon(Icons.email,color: Colors.black,),
                            hintText: 'Entre your email'
                        ),
                        validator: (value){
                          if ((value ?? '').isEmpty){
                            return 'Please , Entre your Email';
                          } else if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value ?? '')){
                            return 'Please Entre a valid email';
                          } return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      SizedBox(height: 5,),
                      Text('Password',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextFormField(
                        controller: passWord,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Colors.white
                              ),
                            ),
                            prefixIcon: Icon(Icons.key,color: Colors.black,),
                            hintText: 'Entre your password',
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                obscure = !obscure;
                              });
                            }, icon: Icon(obscure? Icons.visibility : Icons.visibility_off,
                              color: obscure? Colors.black : Colors.grey,)
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
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                            onPressed: (){}
                            , child: Text('Forgot Password ?'
                          ,style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Align(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 200,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    print(emailController);
                                    print(passWord);
                                  }
                                }
                                , child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)
                                ,),
                                style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepPurple
                                ) ,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text('Or',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                              width: 170,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    print(emailController);
                                    print(passWord);
                                  }
                                }
                                , child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)
                                ,),
                                style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent
                                ) ,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Column(
                              children: [
                                Text('You are not a member yet ?',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    onPressed: (){},
                                    child:Text('Visit as a guest',
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
