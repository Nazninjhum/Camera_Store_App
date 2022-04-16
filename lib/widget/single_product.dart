import 'package:camera_store/pages/home_page.dart';
import 'package:camera_store/pages/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SingleProduct extends StatelessWidget {
  final String name;
  final String image;
  final String details;
  final int price;
  const SingleProduct({Key? key,
    required this.image,
    required this.name,
    required this.details,
    required this.price,
  }) : super(key: key,

  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductPage()));
      },
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.5),
              Colors.red.withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xff37475A).withOpacity(0.2),
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image,scale: 2,fit: BoxFit.cover,),
            Padding(padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(name,style: TextStyle(color: Colors.white,fontSize: 22),),
              Text("*******",style: TextStyle(color: Colors.white, fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(details,style: TextStyle(color: Colors.white,fontSize: 15),),
                  Text("\$$price",style: TextStyle(color: Colors.white,fontSize: 18)),
                ],
              )
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
