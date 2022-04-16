import 'package:flutter/material.dart';

import 'home_page.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
            children: [
             Image(image: AssetImage("assets/images/camera/bg.jpg"),
              height: double.infinity,
              fit: BoxFit.cover,
              ),
              Positioned(
                top: 500,left: 10,right: 10,bottom: 0,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Welcome to the\n Camera Store",
                            style: TextStyle(fontSize: 30,
                                fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Collect beautiful moments with unique",
                            style: TextStyle(fontSize: 15,
                                color: Colors.white),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("camera and enjoy moments!",
                            style: TextStyle(fontSize: 15,
                                color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                            width: 200,
                            child: FlatButton(
                              color: Colors.purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Text("START",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
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
