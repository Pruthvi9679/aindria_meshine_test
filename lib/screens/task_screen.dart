import 'package:flutter/material.dart';

class Addbill extends StatefulWidget {
  const Addbill({super.key});

  @override
  State<Addbill> createState() => _AddbillState();
}

class _AddbillState extends State<Addbill> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color.fromARGB(255, 212, 160, 177),
                    Color.fromARGB(255, 195, 230, 247)],
                  radius: 3.0,
                  center: Alignment.topLeft,
                )),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 220, 238, 221),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){
                                Navigator.pop(context);
                              },
                                  icon: const Icon(Icons.arrow_back_ios))
                            ],

                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Text('Add New Invoice',style: TextStyle(
                          color:Color.fromARGB(255, 12, 87, 148),fontWeight: FontWeight.bold,fontSize: 20
                      ),)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(15),
                        width: 120,height: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 202, 199, 199),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0,0.5),
                                  blurRadius: 1
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 65,height: 65,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors:[ Color.fromARGB(255, 14, 97, 165),
                                        Color.fromARGB(255, 24, 110, 180)
                                      ]),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Container(
                                  width: 30,height: 30,
                                  child: Image.asset('assets/images/Barcode.png'),
                                ),

                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Center(
                              child: Text('Scan Your Bill',style: TextStyle(
                                  color: Colors.blue
                              ),),
                            )
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.all(15),
                        width: 120,height: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 202, 199, 199),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0,0.5),
                                  blurRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 65,height: 65,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors:[ Color.fromARGB(255, 14, 97, 165),
                                        Color.fromARGB(255, 24, 110, 180)
                                      ]),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Container(
                                  width: 30,height: 30,
                                  child: Image.asset('assets/images/UploadSimple.png'),
                                ),

                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Center(
                              child: Text('Upload Bill',style: TextStyle(
                                  color: Colors.blue
                              ),),
                            )
                          ],
                        ))],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 220, 238, 221),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Vector (3).png'),
                      const SizedBox(width: 5),
                      const Text('My Invoices',style: TextStyle(
                          fontWeight: FontWeight.bold,color: Color.fromARGB(255, 12, 87, 148)
                      ),)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),

                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0x99ffffff),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.transparent,
                          image:  const DecorationImage (
                            fit:  BoxFit.cover,
                            image:  AssetImage (
                                'assets/images/myG.png'
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text(
                                'MyG Kakkanad',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.375,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            const Text(
                              'Invoice No: 564446456',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                height: 1.5714285714,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                              child: const Text(
                                '1320',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1,
                                  color: Color(0xff4d60dd),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: const Text(
                                '29 Dec,2023',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  height: 1.8333333333,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/pendingck.png',
                            width: 50,
                            height: 50,
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            )
        ));
  }
}