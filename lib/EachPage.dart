import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterScreen.dart';
class slider extends StatelessWidget {
  const slider({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Eachpage extends StatelessWidget {
  late String imagePath;

  late String tagline;
  late String tag;
  Eachpage(this.imagePath,this.tagline,this.tag,{Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.all(15.0),
          width: width,
          //height: height*0.5,
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(

                    onTap: () {},
                    child: Container(
                      width: 80,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lime.shade50,
                      ),
                      child: const Text('skip'),
                    ),
                  ),
                ],
              ),
              Image.asset('assets/7krave.PNG',height: 100,width: 100,),
              //Spacer(),
              //SizedBox(height: 1),
              Container(
                  height: 200,
                  clipBehavior:  Clip.none,
                  //alignment: Alignment.center,
                  child: Image.asset(imagePath,height: 300,width: null,)
              ),

              SizedBox(height: 20,),
              Center(
                child: Text(tagline,

                  style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(tag,

                    style: TextStyle(fontSize: 13,color: Colors.grey,)),
              ),
              SizedBox(height: 10,),
              /*
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context,int i){

                    return Padding(
                        padding: EdgeInsets.all(15),
                      child: Container(width: 20,color: Colors.white70,),
                    );
                  }


                ),

                 */
              Container(
                height: 50,
                // alignment: Alignment.center,
                //width: double.infinity,
                //padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,

                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),

                    child: Text("Get Started",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: (){}),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Doesn't have an account?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (v) {
                          return RegisterScreen();
                        }
                        )

                    );
                  }, child: Text("Sign Up"))


                ],
              ),






            ],),
        ),
      ),
    );
  }
}
