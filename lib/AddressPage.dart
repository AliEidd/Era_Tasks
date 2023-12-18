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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Button(),));
                  },child: Text('Add Address',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 30),),),

                  ),
            ],
          ),
        ),

      ),

    );
  }
}
