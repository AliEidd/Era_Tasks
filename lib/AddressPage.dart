import 'package:flutter/material.dart';
import 'package:projects/ButtomNavigationBar.dart';
import 'package:projects/HomeScreenPage.dart';

import 'Colors.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: primary,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 30,
                width: 30,
                child: InkWell(
                  onTap: (){Navigator.pop(context);},
                    child: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 20,)),
              ),
              SizedBox(width: 15,),
              Text(
                'Address',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),

            ],
          ),
        ),

        actions: [
          Icon(Icons.inbox_outlined,color: Colors.white,size: 30,),
          SizedBox(width: 15,),
          Icon(Icons.mark_email_unread_outlined,color: Colors.white,size: 30,),
          SizedBox(width: 20,),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120,),
              Image.asset('images/image26.png',height: 200,width: 200,),
              SizedBox(height: 50,),
              Text('Add your address ',style: TextStyle(color: Colors.white,fontSize: 30),),
              SizedBox(height: 10,),
              Expanded(child: Text('Unfortunately we don\'t know where to deliver your items to you',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 20,))),
              Container(
                  decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                      border: Border.all(color: Colors.deepPurpleAccent),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  height: 70,
                  width: double.infinity  ,
                  alignment: Alignment.center,
                  child:  TextButton(onPressed: (){
                    showDialog(context: context, builder: (context) =>
                        Dialog(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: SizedBox(
                              height: 400,
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('images/image58.png',height: 100,width: 100,),
                                    SizedBox(height: 20,),
                                    Text('Account Updated',style: TextStyle(color: Colors.white,fontSize: 25),),
                                    SizedBox(height: 5,),
                                    Text('Your account details have been successfully changed',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 17,)),
                                    SizedBox(height: 20,),
                                    SizedBox(
                                      width: 300,
                                      height: 70,
                                      child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenPage(),));
                                        }, child:
                                      Text('OK',style: TextStyle(color: Colors.white ,fontSize: 30),),
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
                          ),
                        )

                      );

                  },child: Text('Add Address',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 30),),),

                  ),
            ],
          ),
        ),

      ),

    );
  }
}
