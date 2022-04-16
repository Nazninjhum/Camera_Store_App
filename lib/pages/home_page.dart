import 'package:camera_store/widget/single_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera_store/widget/details.dart';
import 'package:camera_store/data/data.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home,size: 30,),
      Icon(Icons.search,size: 30,),
      Icon(Icons.favorite,size: 30,),
      Icon(Icons.settings,size: 30,),
      Icon(Icons.person,size: 30,),
    ];
    var conntroller;
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            Image(image: AssetImage("assets/images/camera/bg2.jpg"),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 40,left: 10,right: 10,bottom: 0,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Icon(Icons.line_weight,size: 25,color: Colors.white,),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,left: 395,right: 10,bottom: 0,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 29,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/camera/bg3.jpg'),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            Positioned(
              top: 100,left: 10,right: 10,bottom: 0,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Hello, Aliyu",style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Welcome back!",style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.w500,color: Colors.white)),
                      ],
                    ),


                  ],
                ),
              ),
            ),
            Positioned(
                top: 200,left: 10,right: 10,bottom: 500,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  margin: EdgeInsets.all(9),
                  child: TextField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.white,size: 30,),
                      hintText: "Search Product",
                      hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                      suffixIcon: Icon(CupertinoIcons.line_horizontal_3_decrease_circle,
                        size: 50,color: Colors.white,),
                    ),
                  ),

                )),
            Positioned(
              top: 290,left: 10,right: 10,bottom: 0,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Categories",style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 330,left: 10,right: 10,bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: demoCategories.length,
                          itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){},
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 3.0),
                            margin: EdgeInsets.only(right: 20,top: 3,bottom: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white.withOpacity(0.5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.10),
                                  offset: Offset(0, 1),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Text(demoCategories[index].name,
                              style: TextStyle(fontSize: 15,color: Colors.purple,fontWeight: FontWeight.bold),),

                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 380,left: 10,right: 10,bottom: 0,
              child: Container(
                child: GridView.builder(
                  controller: conntroller,
                  shrinkWrap: true,
                  itemCount: reImgList.length,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index){
                    ReModel data = reImgList[index];
                    return SingleProduct(
                      image: data.image,
                      name: data.name,
                      details: data.details,
                      price: data.price,
                    );
                  },
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height:60,
        index: index,
        items: items,

      ),
    );
  }
}


