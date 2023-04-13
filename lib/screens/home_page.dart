import 'package:aindria_meshine_test/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'task_screen.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
       Container(
        height: double.infinity,
          width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.jfif"),
            fit: BoxFit.cover
          )
        ),
      ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Image.asset("assets/images/back.png"),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Enter the invoice number",
                    style: TextStyle(
                      fontSize: 15,
                      color:Colors.blue,
                        fontWeight:FontWeight.w500
                    ),
                  ),
                SearchBar(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/phone.png", height: 400),
                  ],
                 ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.blue,
                            shadowColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(170, 40)
                          ),
                          onPressed: () {},
                          child: Text('< Back')
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              onPrimary: Colors.white,
                              shadowColor: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              minimumSize: Size(170, 40)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Addbill()),
                            );
                          },
                          child: Text('Next >')
                        )
                      ],
                    ),
                ],
              ),
            ),
          )
      ]),
    );
  }
}

