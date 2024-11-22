import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballApp());
}
int counter1=0;
int counter2=0;
class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'points counter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Center(
              child: Row(children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          '  TEAM A',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Points: $counter1',style: TextStyle(fontWeight: FontWeight.bold, fontSize:40)
                      ),
                      SizedBox(height: 10),
                      TextButton(

                        onPressed: () {

                          setState(() {
                            counter1++;
                          });
                        },
                        child: Text('Add 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(

                        onPressed: () {

                          setState(() {
                            counter1=counter1+2;
                          });
                        },
                        child: Text('Add 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(

                        onPressed: () {

                          setState(() {
                            counter1=counter1+3;
                          });
                        },
                        child: Text('Add 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                        ),

                      ),



                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 20,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          '  TEAM B',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Points: $counter2',style: TextStyle(fontWeight: FontWeight.bold, fontSize:40)
                      ),
                      SizedBox(height: 10),
                      TextButton(

                        onPressed: () {

                          setState(() {
                            counter2++;
                          });
                        },
                        child: Text('Add 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(

                        onPressed: () {

                          setState(() {
                            counter2=counter2+2;
                          });
                        },
                        child: Text('Add 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(

                        onPressed: () {

                          setState(() {
                            counter2=counter2+3;
                          });
                        },
                        child: Text('Add 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

                        ),

                      ),

                    ],
                  ),
                ),
              ]),

            ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){
              setState(() {
                counter1=0;
                counter2=0;
              });
            },

              child:Text('Reset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all<Color>(Colors.green) ,
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
