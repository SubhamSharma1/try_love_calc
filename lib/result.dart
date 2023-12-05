import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
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
              "Your Bond is now stronger by :",
              style: TextStyle(
                color: Color(0xffa74343),
                fontSize: 20.0,
                fontWeight: FontWeight.w500
              ),
            ),

            Container(
              height:400.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 241, 245, 244),
                  width: 1.0
                ),
                
                borderRadius: BorderRadius.circular(20.0),
                color: Color.fromARGB(255, 8, 76, 211),
                boxShadow: [BoxShadow(
                  color: Color.fromARGB(15, 245, 0, 33),
                  blurRadius: 16.0,
                  spreadRadius: 20.0,                  
                )]
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
                    color: Color.fromARGB(255, 255, 255, 247),
                    padding: EdgeInsets.all(10.0),
                    child: Text("Facebook",
                    style: TextStyle(
                      color:Color(0xffa74343),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    child: Text("Twitter"),
                  ),
                  Container(
                    child: Text("Instagram"),
                  ),
                  ]
                ),
                
              
              ],
            )

          ],
        ),
      ),

  
    );
  }
}