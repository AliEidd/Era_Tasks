import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class History {
  String? date;
  String? points;
  String? steps;

  History({this.date, this.points, this.steps});
}
List list =[
  History(date: '27 May', points: '',steps: '11120'),
  History(date: '26 May', points: '',steps: '11120'),
  History(date: '25 May', points: '100 pt',steps: '10120'),
  History(date: '24 May', points: '',steps: '11120'),
  History(date: '23 May', points: '100 pt',steps: '10120'),
  History(date: '22 May', points: '',steps: '11120'),
  History(date: '21 May', points: '100 pt',steps: '10120'),
  History(date: '20 May', points: '',steps: '11120'),
  History(date: '19 May', points: '100 pt',steps: '10120'),
  History(date: '18 May', points: '',steps: '11120'),


];
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});
  
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
                child: Icon(Icons.keyboard_arrow_left,color: Colors.white,size: 30,),
              ),
              SizedBox(width: 15,),
              Text(
                'History',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
        Container(
        decoration: BoxDecoration(color: Colors.blueGrey.shade900,
            border: Border.all(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(20)
        ),
        height: 140,
        width: double.infinity  ,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('images/image22.png',height: 40,width: 40,),
                  Text('18,3 H',style: TextStyle(color: Colors.white,fontSize: 25),),
                  Text('Time',style: TextStyle(color: Colors.grey,fontSize: 20),),
                ],
              ),
              VerticalDivider(
                indent: 40,
                endIndent: 40,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Image.asset('images/image23.png',height: 40,width: 40,),
                  Text('48.7 KM',style: TextStyle(color: Colors.white,fontSize: 25),),
                  Text('Distance',style: TextStyle(color: Colors.grey,fontSize: 20),),
                ],
              ),
              VerticalDivider(
                indent: 40,
                endIndent: 40,
                color: Colors.grey,
              ),
        
              Column(
                children: [
                  Image.asset('images/image24.png',height: 40,width: 40,),
                  Text('123 BPM',style: TextStyle(color: Colors.white,fontSize: 25),),
                  Text('Heart Beat',style: TextStyle(color: Colors.grey,fontSize: 20),),
                ],
              ),
        
            ],
          ),
        )
        ),
            SizedBox(height: 20,),
           ListView.separated(
             shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemBuilder:(context, index) =>
            Container(
            decoration: BoxDecoration(color: Colors.blueGrey.shade900,
            border: Border.all(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(20)
            ),
            height: 100,
            width: double.infinity  ,
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(list[index].date,style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 25),),
            Row(
            children: [
            Text(list[index].points,style: TextStyle(color: Colors.red,fontSize: 15),),
            Icon(MdiIcons.circleSmall,color: Colors.white,size: 15,),
            Text('12,4 Km',style: TextStyle(color: Colors.grey,fontSize: 15),),
            Icon(MdiIcons.circleSmall,color: Colors.white,size: 15,),
            Text('1222 kcal',style:TextStyle(color: Colors.grey,fontSize: 15))
            ],
            ),
            ],
            ) ,
            Row(
            children: [
            Text(list[index].steps,style :TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(width: 5,),
            Text('Steps',style :TextStyle(color: Colors.white,fontSize: 17))
            ],
            )
            ],
            ),
            ),
            )
        
               , separatorBuilder:(context, index) => SizedBox(height: 15,),
               itemCount: list.length
           )
          ],
        ),
      ),
    );
  }
}
