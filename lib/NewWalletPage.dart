import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NewWalletPage extends StatelessWidget {
  const NewWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar:AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                    border: Border.all(color: Colors.grey.shade800),
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 30,
                width: 30,
                child: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 20,),
              ),
              SizedBox(width: 15,),
              Text(
                'New Wallet',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 220,
            child: Text(
              'select the withdrawal type',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
      Container(
        decoration: BoxDecoration(color: Colors.blueGrey.shade800,
            border: Border.all(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(60)
        ),
        height: 170,
        width: double.infinity  ,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
             children: [
               Container(
                 decoration: BoxDecoration(color: Colors.deepPurpleAccent,
                     border: Border.all(color: Colors.deepPurpleAccent.shade400,width: 3 ),
                     borderRadius: BorderRadius.circular(60)
                 ),
                 height: 80,
                 width: 80,
                 child: Icon(MdiIcons.bankOutline,color: Colors.white,size: 45,),
               ) ,
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(14.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Bank Account',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 25,
                         ),
                       ),
                       Text(
                         'Unfortunately we don\'t know where to send your money',
                         style: TextStyle(
                           color: Colors.grey.shade500,
                           fontSize: 15,
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 30,)

             ],
          ),
        ),
      ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(color: Colors.blueGrey.shade800,
                border: Border.all(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(60)
            ),
            height: 170,
            width: double.infinity  ,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.red,
                        border: Border.all(color: Colors.redAccent.shade100,width: 3 ),
                        borderRadius: BorderRadius.circular(60)
                    ),
                    height: 80,
                    width: 80,
                    child: Icon(Icons.credit_card,color: Colors.white,size: 45,),
                  ) ,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            'Unfortunately we don\'t know where to send your money',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 30,)

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
