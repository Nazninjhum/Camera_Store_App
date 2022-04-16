import 'package:camera_store/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera_store/widget/single_product.dart';
import 'package:camera_store/widget/details.dart';
class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: [
              Image(image: AssetImage("assets/images/camera/bg2.jpg"),
                height: double.infinity,
                fit: BoxFit.cover,
              ),

              Positioned(
                top: 0,left: 40,right: 40,bottom: 550,
                child: Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index){
                      ReModel data = reImgList[index];
                      return Image(
                        image: AssetImage("assets/images/camera/ca1.png"),
                      );
                    },
                  ),


                ),
              ),

              Positioned(
                top: 40,left: 10,right: 10,bottom: 0,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_outlined,size: 30,color: Colors.white,),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,top: 320,left: 0,right: 0,
                  child: Container(
                    padding: EdgeInsets.only(left: 20,right: 20, top: 30),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Insta x Mini II",
                              style: TextStyle(fontSize: 30,
                                fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("\$ 259",
                              style: TextStyle(fontSize: 30,
                                fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 05,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("in stock: 3 remaining",
                              style: TextStyle(fontSize: 15,
                                  color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("Product Deteils",
                              style: TextStyle(fontSize: 28,
                                  color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("This is going to be very short introduction to the",
                              style: TextStyle(fontSize: 16,
                                  color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 05,),
                        Row(
                          children: [
                            Text("product and i will like to see how the text fits in the",
                              style: TextStyle(fontSize: 16,
                                  color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 05,),
                        Row(
                          children: [
                            Text("container. This is an demo text.",
                              style: TextStyle(fontSize: 16,
                                  color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 150,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 70,
                                width: 250,
                                child: FlatButton(
                                  color: Colors.purple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  onPressed: (){},
                                  child: Text("BUY NOW",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),

                            Container(
                              height: 70,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.white
                                ),
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(CupertinoIcons.cart,color: Colors.white,size: 30,),
                              ),
                            ),
                          ],
                        ),
                      ],
                  ),
              ),
          ),
         ],
        ),
        ),
    );
  }
}
