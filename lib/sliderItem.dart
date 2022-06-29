
import 'package:flutter/material.dart';

class slideItem extends StatelessWidget {
  final String text1 ;
  final String text2 ;
  final String url1;



  const slideItem({

    Key? key  ,

    required this.text1,
    required this.text2,
    required this.url1,





  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

    Center(
    child: SizedBox(
    //height: 40,
    child: Image.asset(url1 ,
      height: 250,
      width: null,
    )
    ),
    ),

    Padding(

    padding: EdgeInsets.only( bottom: 15 , left: 0 , right: 27),
    child: SizedBox(
    height: 60,

    child: Text(

    text1,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 18 , color: Colors.black , fontWeight: FontWeight.bold),




    ),
    ),
    ),

        Padding(

          padding: EdgeInsets.only( bottom: 0, left: 10 , right: 10),
          child: SizedBox(
            height: 100,

            child: Text(

              text2,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11 , color: Colors.black38 , ),




            ),
          ),
        ),




      ],
    );
  }
}




