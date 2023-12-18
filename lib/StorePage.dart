import 'package:flutter/material.dart';

import 'Colors.dart';
class Catagories {
  String? photo;
  String? text;

  Catagories({this.photo, this.text});
}
class Brands {
  String? brand;
  String? name;

  Brands({this.brand, this.name});
}

List brand1 = [
  Brands(name: 'Puma',brand: 'images/image46.png'),
  Brands(name: 'Reebok',brand: 'images/image48.png'),
  Brands(name: 'Nike',brand: 'images/image49.png'),
  Brands(name: 'Adidas',brand: 'images/image50.png')
];

List brand2 = [
  Brands(name: 'Ua',brand: 'images/image47.png'),
  Brands(name: 'Asics',brand: 'images/image51.png'),
  Brands(name: 'Reebok',brand: 'images/image48.png'),
  Brands(name: 'SeeAll',brand: 'images/image52.png')
];

List catagories= [
  Catagories(text: 'New',photo: 'images/image44.png'),
  Catagories(text: 'Men',photo: 'images/image39.png'),
  Catagories(text: 'Women',photo: 'images/image41.png'),
  Catagories(text: 'Kids',photo: 'images/image42.png'),
  Catagories(text: 'Equip',photo: 'images/image43.png'),
  Catagories(text: 'Nutrition',photo: 'images/image45.png'),
];
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar:AppBar(
        backgroundColor: primary,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                    border: Border.all(color: Colors.grey.shade800),
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
                'Store',
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) => Column(
                      children: [
                      Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        height: 70,
                        width: 70,
                        child: Image.asset(catagories[index].photo,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 7,),
                      Text(catagories[index].text,style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                     separatorBuilder: (context, index) => SizedBox(width: 15,),
                     itemCount:catagories.length),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [
                        Colors.redAccent,
                        Colors.orangeAccent
                      ]
                      ),
                          border: Border.all(color: Colors.grey.shade600),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 180,
                      width: 350 ,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Today’s Special',style: TextStyle(color: Colors.white,fontSize: 25),),
                                  Text('Get 2x point for every steps, only valid for today',style: TextStyle(color: Colors.white,fontSize: 15)),

                                ],
                              ),
                            ),
                          ),
                          Stack(
                              children: [
                                Image.asset('images/image40.png',height: 150,width: 150,),
                                PositionedDirectional(
                                  top: 120,
                                    width: 20,
                                    child: Text('X',style: TextStyle(color: Colors.white,fontSize: 22),)
                                ),
                                PositionedDirectional(
                                    top: 100,
                                    width: 20,
                                    end: 120,
                                    child: Text('2',style: TextStyle(color: Colors.white,fontSize: 35)
                                ),
                                )
                        ],
                          ),
                      ]
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [
                        Colors.deepPurpleAccent.shade200,
                        Colors.red.shade100
                      ]
                      ),
                          border: Border.all(color: Colors.grey.shade600),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 180,
                      width: 350 ,
                      child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Today’s Special',style: TextStyle(color: Colors.white,fontSize: 25),),
                                    Text('Get 3x point for every steps, only valid for today',style: TextStyle(color: Colors.white,fontSize: 15)),

                                  ],
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Image.asset('images/image40.png',height: 150,width: 150,),
                                PositionedDirectional(
                                    top: 120,
                                    width: 20,
                                    child: Text('X',style: TextStyle(color: Colors.white,fontSize: 22),)
                                ),
                                PositionedDirectional(
                                  top: 100,
                                  width: 20,
                                  end: 120,
                                  child: Text('3',style: TextStyle(color: Colors.white,fontSize: 35)
                                  ),
                                )
                              ],
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder:(context, index) =>
                        Container(
                            decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                                border: Border.all(color: Colors.grey.shade700),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            height: 75,
                            width: 82,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(brand1[index].brand,height: 42,width: 42,),
                                  Text(brand1[index].name,style: TextStyle(color: Colors.grey,fontSize: 13),),
                                ],
                              ),
                            )
                        ),
                     separatorBuilder:(context, index) => SizedBox(width: 15,),
                     itemCount: brand1.length
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder:(context, index) =>
                        Container(
                            decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                                border: Border.all(color: Colors.grey.shade700),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            height: 75,
                            width: 82,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(brand2[index].brand,height: 42,width: 42,color: Colors.white,),
                                  Text(brand2[index].name,style: TextStyle(color: Colors.grey,fontSize: 13),),
                                ],
                              ),
                            )
                        ),
                    separatorBuilder:(context, index) => SizedBox(width: 15,),
                    itemCount: brand2.length
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular',style: TextStyle(color: Colors.white,fontSize: 20),),
                  TextButton(onPressed: (){}, child: Text('See All',style: TextStyle(color: Colors.deepPurple,fontSize: 20),)),
                ],
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(color: Colors.blueGrey.shade900,
                          border: Border.all(color: Colors.grey.shade700),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      height: 200,
                      width: 185,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              height: 120,
                              width: 170,
                              alignment: Alignment.center,
                              child: Image.asset('images/image53.png'),
                            ),
                            PositionedDirectional(
                              top: 19,
                              end: 10,
                              child: Container(
                                width: 53,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade700,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('images/image36.png',width: 15,height: 15,color: Colors.white,),
                                    Text('1200',style: TextStyle(color: Colors.white,fontSize: 10),)
                                  ],
                                ),
                              ),
                            ),
                          ]
                        ),
                            SizedBox(height: 6,),
                            Text('Nike',style: TextStyle(color: Colors.grey,fontSize: 15),),
                            Text('Air Force 1 low \'07',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold))

                          ],
                        ),
                      )
                  ),
          SizedBox(width: 10,),
          Container(
              decoration: BoxDecoration(color: Colors.blueGrey.shade900,
              border: Border.all(color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(15)
          ),
          height: 200,
          width: 185,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        height: 120,
                        width: 170,
                        alignment: Alignment.center,
                        child: Image.asset('images/image54.png'),
                      ),
                      PositionedDirectional(
                        top: 19,
                        end: 10,
                        child: Container(
                          width: 53,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade700,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/image36.png',width: 15,height: 15,color: Colors.white,),
                              Text('1200',style: TextStyle(color: Colors.white,fontSize: 10),)
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(height: 6,),
                Text('Nike',style: TextStyle(color: Colors.grey,fontSize: 15),),
                Text('Air Lunaroll 1 ',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold))

              ],
            ),
          )
      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
