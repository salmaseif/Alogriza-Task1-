import 'package:flutter/material.dart';
import 'package:firsttask/sliderItem.dart';

import 'RegisterScreen.dart';
import 'SignInScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //double width= MediaQuery.of(context).size.width;
    //double height= MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: //Page()
      SignInScreen()

    );
  }
}
class Page extends StatefulWidget {




  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {

  final PageController controller= PageController(
      initialPage: 0
  );



  var text = RichText(
    text: const TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.black,
      ),
      children: [
        TextSpan(text: "Don't have an account?" , style: TextStyle(fontWeight: FontWeight.bold   , color: Colors.black ) ),

        TextSpan(text: '  Sign up', style: TextStyle(fontWeight: FontWeight.bold   , color: Colors.teal )),
      ],
    ),
  );



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,


      body:  Padding(

        padding: const EdgeInsets.all(20.0),


        child: Stack(

            children:[

              SizedBox(height: 50,),


              PageView(

                children: const [
                  slideItem( url1: 'assets/deliverymann.png',    text1: "    Get food delivery to your \n   door step asap",  text2: "We have young and professional delivery team that will bring your food as soon as possible to your doorstep",),

                  slideItem( url1: 'assets/postman.png', text1: "    Buy Any Food from your \n favourite restaurant ", text2: "we are constantly adding ypur favourite restaurant throughout the territory and around your carefully selected",),

                ],

              ),



              Container(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child:
                      Padding(
                        padding: EdgeInsets.only(left: 10 , bottom: 20, right:0 ),
                        child: Container(
                          width: 70,

                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(
                                  60
                              )

                          ),
                          child: MaterialButton(
                           // minWidth: 39,
                            onPressed: (){

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (v) {
                                    return SignInScreen();
                                  }
                                  )
                              );
                            },

                            height: 50,


                            color: Colors.lime.shade50,

                            child:  Text("Skip" ,style: TextStyle(color: Colors.black , fontSize: 10)),











                          ),
                        ),
                      )
                  )
              ),

              //Colors.blueGrey.shade50



              Container(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:  [

                    Center(
                      child: Image.asset('assets/7krave.PNG' ,
                        height: 100,
                        width: 500,
                      ),
                    ),
                  ],
                ),
              ),








              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,


                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 15),
                          width: 25,
                          height: 8,
                          margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.amber,
                            borderRadius:  BorderRadius.circular(
                                15
                            ),

                          ),

                        ),

                        Container(

                          width: 25,
                          height: 8,
                          margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 1),
                          decoration:  BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey.shade100,
                            borderRadius:  BorderRadius.circular(
                                15
                            ),

                          ),

                        ),
                        Container(

                          width: 25,
                          height: 8,
                          margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                          decoration:  BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey.shade100,
                            borderRadius:  BorderRadius.circular(
                                15
                            ),

                          ),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0 , bottom: 0, right:0 ),
                    child: Container(
                      width: double.infinity,

                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              15
                          )

                      ),
                      child: MaterialButton(
                        onPressed: (){

                              (){};
                        },

                        height: 60,


                        color: Colors.teal,

                        child:  Text("Get Started" ,style: TextStyle(color: Colors.white , fontSize: 14,fontWeight: FontWeight.bold)),











                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),

                  Padding(padding: const EdgeInsets.only(bottom: 20), child: Container( width: double.infinity,  child: Center(child: text),),)


                ],
              ),

            ]
        ),
      ),



    );
  }
}
