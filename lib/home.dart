import 'dart:convert';
import 'dart:math';

import 'package:calculator_love/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _loveform = GlobalKey<FormState>();
  final TextEditingController _maleNameController = TextEditingController();
  final TextEditingController _femaleNameController = TextEditingController();
  int calculateLove($male,$female)
  {
    String combinedNames = $male + $female;
    int totalAscii = 0;
    for (int i = 0; i < combinedNames.length; i++) {
      totalAscii += combinedNames.codeUnitAt(i);
    }
    int randomNumber = Random().nextInt(15);
    totalAscii-=randomNumber;
    return totalAscii % 101;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:30.0,left: 30.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "How",
                  style: TextStyle(
                    color: Color(0xffa74343),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              
                const Text(
                  "much",
                  style: TextStyle(
                    color: Color(0xffa74343),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              
                const Text(
                  "do you",
                  style: TextStyle(
                    color: Color(0xffa74343),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              
                const Text(
                  "love",
                  style: TextStyle(
                    color: Color(0xffa74343),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              
                const Text(
                  "your",
                  style: TextStyle(
                    color: Color(0xffa74343),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              
                const Text(
                  "partner ?",
                  style: TextStyle(
                    color: Color(0xffa74343),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 20.0,top: 30.0),
                  child: Text(
                    "and other cute stupid things to calculate.",
                    style: TextStyle(
                      color: Color(0xffa74343),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Form(
                  key: _loveform,
                  child: Column(
                    children: [
                      Padding(
                    padding: const EdgeInsets.only(top:50.0,right: 20.0),
                    child: TextFormField(
                      controller: _maleNameController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        prefixIconColor:const Color(0xffa74343) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide
                          (
                          color: Color(0xffa74343),
                          ),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                         
                        ),
                      hintText: "Your Name",
                      ),
                      cursorColor: const Color(0xffa74343),
                      style: const TextStyle(
                        color: Color(0xffa74343),
                      ),
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return "Don't you have a name ? Man";
                      }
                      return null;
                    },
                    ),
                  ),
                      Padding(
                      padding: const EdgeInsets.only(top:20.0,right: 20.0),
                      child: TextFormField(
                        controller: _femaleNameController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_2),
                          prefixIconColor:const Color(0xffa74343),
                          iconColor: const Color(0xffa74343),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide
                            (
                            color: Color(0xffa74343),
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                            ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        hintText: "Your Loved one",
                        ),
                        cursorColor: Color(0xffa74343),
                        style: const TextStyle(
                          color: Color(0xffa74343),
                        ),
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Are you single ? 😅";
                          }
                        
                          return null;
                        },
                      
                      ),
                    
                    ),
                    ]
                  ),
                ),
              
              ],
              
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        onPressed: ()=>{},

        backgroundColor:const Color(0xffa74343) ,
        child: IconButton(
          onPressed:() {
            if(_loveform.currentState!.validate())
            {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> ResultPage(
                    malename: _maleNameController.text,
                    femalename:_femaleNameController.text,
                    result:calculateLove( _maleNameController.text,_femaleNameController.text)
                  )),
                  );
            }
          },
          icon:const Icon(Icons.favorite),
          iconSize: 60.0,
        ),
      ),
    );
  }
}