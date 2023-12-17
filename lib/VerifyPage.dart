import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        leading: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 30,),
      ),
      body: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/image29.png',height: 200,width: 200,),
            SizedBox(height: 50,),
            Text('Verify your email ',style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(height: 10,),
            Text(
                'Enter the email associated with your account we’ll send email with password to verify',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,fontSize: 15,)),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    child: Text('3',style: TextStyle(color: Colors.white,fontSize: 40),)
                  ),
                  Container(
                      decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                          border: Border.all(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                        border: Border.all(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: 400,
              height: 70,
              child: ElevatedButton(
                onPressed: (){}, child:
              Text('Verify Email',style: TextStyle(color: Colors.white ,fontSize: 30),),
                style: ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ) ,
                  backgroundColor: Colors.deepPurpleAccent,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                  border: Border.all(color: Colors.deepPurpleAccent),
                  borderRadius: BorderRadius.circular(15)
              ),
              height: 70,
              width: double.infinity  ,
              alignment: Alignment.center,
              child:  TextButton(onPressed: (){},child: Text('Open mail app',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 30),),),

            ),
          ],
        ),
      ),

    ),
    );
  }
}
