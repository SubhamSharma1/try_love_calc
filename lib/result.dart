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

  
    );
  }
}