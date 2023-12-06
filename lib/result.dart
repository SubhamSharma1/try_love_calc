import 'package:flutter/material.dart';
import 'dart:math';

class ResultPage extends StatelessWidget {
   ResultPage({
    super.key,
    required this.malename,
    required this.femalename,
    required this.result,
    });
  final String malename,femalename;
  final int result;
  int randomValue =Random().nextInt(100); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        toolbarHeight: 180.0,
        title:Container(
          margin: EdgeInsets.only(bottom: 30.0),
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                    "How",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text(
                    "much",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          
                  const Text(
                    "do you",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          
                  const Text(
                    "love",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          
                  const Text(
                    "your",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
          
                  const Text(
                    "partner ?",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.favorite,
                size: 120.0,
                shadows: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                    spreadRadius: 5.0
                  )
                ],
                ),

            ],
            
          ),
          
        ) ,
         
        shape: Border(
          bottom:BorderSide(
            color: const Color.fromARGB(255, 133, 125, 125),
            width:1
          )
           ),
      ),

      body: Container(
        margin: EdgeInsets.only(left: 30.0,right: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Woah !",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0
              ),
            ),
            Text(
              "Mr.${malename} & Miss.${femalename}",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffa74343)
              ),
            ),
            Text(
              "Your Bond is now stronger by :",
              style: TextStyle(
                color: Color(0xffa74343),
                fontSize: 20.0,
                fontWeight: FontWeight.w500
              ),
            ),

            Container(
              height:300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 254, 255, 255),
                  width: 1.0
                ),
                
                borderRadius: BorderRadius.circular(20.0),
                color: Color.fromARGB(255, 245, 245, 245),
                boxShadow: [BoxShadow(
                  color: Color(0xffEEF0F4),
                  blurRadius: 5.0,
                  spreadRadius: 10.0,                  
                )]
              ),
              // child: Padding(
              //   padding: EdgeInsets.all(10.0),
              //   child: SizedBox(
              //     child: CircularProgressIndicator(
              //             value: 0.5,
              //             backgroundColor: Colors.amber,
              //              valueColor: AlwaysStoppedAnimation(Colors.pink[500]),
              //     ),
              //   ),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                  result.toString(),
                  style: TextStyle(
                    fontSize: 180.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffa74343)
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:100.0),
                  child: Text(
                    "%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffa74343)
                    ),
                  ),
                ),

                // SizedBox(
                //   height: 200.0,
                  
                //   child: Center(
                //     child: CircularProgressIndicator(
                //       value: 0.5,
                //       backgroundColor: Colors.amber,
                //       valueColor: AlwaysStoppedAnimation(Colors.pink[500]),
                //     ),
                //   ),
                // )
                ]
              ),
            ),

            

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              "Share It on",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500
              ),
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Container(
                    // color: Color.fromARGB(255, 255, 255, 247),
                    padding: EdgeInsets.all(7.0),
                    margin: EdgeInsets.only(top:10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 254, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffEEF0F4),
                          blurRadius: 2.0,
                          spreadRadius: 2.0
                        )
                      ]
                    ),
                    child: Text("Facebook",
                    style: TextStyle(
                      color:Color(0xffa74343),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    // color: Color.fromARGB(255, 255, 255, 247),
                    padding: EdgeInsets.all(7.0),
                    margin: EdgeInsets.only(top:10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 254, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffEEF0F4),
                          blurRadius: 2.0,
                          spreadRadius: 2.0
                        )
                      ]
                    ),
                    child: Text("Twitter",
                    style: TextStyle(
                      color:Color(0xffa74343),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    // color: Color.fromARGB(255, 255, 255, 247),
                    padding: EdgeInsets.all(7.0),
                    margin: EdgeInsets.only(top:10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 254, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffEEF0F4),
                          blurRadius: 2.0,
                          spreadRadius: 2.0
                        )
                      ]
                    ),
                    child: Text("Instagram",
                    style: TextStyle(
                      color:Color(0xffa74343),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  ]
                ),
                
              
              ],
              
            ),
            Center(
              child: ElevatedButton(onPressed: ()=>{
                Navigator.pop(context)
              },
               style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffa74343),
                // side: BorderSide(
                //   style: 
                // )
               ),
               child: Text(
                "Try Again",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              )),
            )

          ],

        
        ),

        
      ),

  
    );
  }
}