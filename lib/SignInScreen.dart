

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'RegisterScreen.dart';

class SignInScreen  extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
    double dropdownButtonWidth = MediaQuery.of(context).size.width * 0.5;
    //respect dropdown button icon size
    double dropdownItemWidth = dropdownButtonWidth - 30;
    double dropdownSelectedItemWidth = dropdownButtonWidth - 30;
    return Scaffold(
      body:
      SafeArea(
        child: ListView(
          
         // mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
                width: width,
                height: height * 0.25,
                child: Image.asset('assets/back.png', fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text("Welcome to Fashion Daily",
                    style: TextStyle(fontSize: 12, color: Colors.grey),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight
                            .bold),),
                      Row(
                        children: [
                          Text("Help", style: TextStyle(
                              fontSize: 12, color: Colors.blue),),
                          SizedBox(width: 5,),
                          Icon(Icons.help, size: 15, color: Colors.blue,)
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Phone Number", style: TextStyle(fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    child: IntlPhoneField(

                      showCountryFlag: false,
                      decoration: InputDecoration(
                        labelText: 'Eg.8342453878',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'EG',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                   height: 40,
                     // alignment: Alignment.center,
                   //width: double.infinity,
                   //padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ElevatedButton(


                        child: Text("Sign in"),
                        onPressed: (){}),
                  ),
                  SizedBox(height: 10,),

                  Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(height: 40,)
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Or",style: TextStyle(color: Colors.grey),),
                        ),

                        Expanded(
                            child: Divider(height: 40,)
                        ),
                      ]
                  ),
                  Container(
                    //margin: const EdgeInsets.all(15.0),
                    //padding: const EdgeInsets.all(3.0),
                      width: double.infinity,
                      //height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                    child: Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      height: 40,
                      child: SignInButton(

                        Buttons.Google,

                        text:
                        'Sign in with by Google',
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Doesn't has any account?"),
                   TextButton(onPressed: (){
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (v) {
                           return RegisterScreen();
                         }
                         )

                     );
                   }, child: Text("Register here"))
                   

                 ],
               ),
                  SizedBox(height: 10,),

                  Container(
                      padding: const EdgeInsets.all(15.0),

                      child: Text("Use the application according to policy rules.Any kind of vioalations will besubject to sanctions",
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 12,color: Colors.grey),),)
                ],


              ),

            )


          ],


        ),
      ),


    );
  }

  }


