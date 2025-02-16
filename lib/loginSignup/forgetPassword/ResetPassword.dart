import 'package:flutter/material.dart';

import '../../theme.dart';
class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<Resetpassword> {
  var pass = TextEditingController();
  var pass1 = TextEditingController();
  bool passwordVisible= false;
  bool passwordVisible1= false;
  bool _obscureText= true;
  bool isPressed= false;
  bool btnclr = false;
  bool txtclr=false;
  bool _obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fadedBlue,
        appBar: AppBar(
          backgroundColor: scaffoldBackgroundColor,
          title: const Text('Forgot Password'),
          ),
        body: Padding(
          padding: const EdgeInsets.only(left:20,top:35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [


                  Padding(padding: const EdgeInsets.all(5),
                      child: Container(
                          height: 350,
                          width: 350,
                          padding: const EdgeInsets.only(left: 10,top: 10,right: 10),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // boxShadow: [BoxShadow(color: Color.fromRGBO(215, 214, 214, 1))],
                            color: scaffoldBackgroundColor,
                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Positioned(
                                      left: 30,
                                      child: Text("Type your new password",style: TextStyle(fontSize: 15, color: grey, fontWeight: FontWeight.bold),)),
                                    const SizedBox(height: 10,),
                                    SizedBox(
                                      width: 420,
                                      child: Form(
                                          child: TextFormField(
                                            // keyboardType: TextInputType.number,
                                            autofocus: true,
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            obscureText: _obscureText,
                                            obscuringCharacter: '*',
                                            // obscureText: true,
                                            controller: pass1,
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Field is empty';
                                              }
                                              if(value==8){
                                                return 'Incomplete Length';
                                              }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              if (value != '' &&
                                                  value.length > 8 &&
                                                  pass.text.length > 4) {

                                                setState(() {
                                                  btnclr = true;
                                                });

                                              }
                                              else{

                                                setState(() {
                                                  btnclr = false;
                                                });
                                              }
                                            },
                                            decoration: InputDecoration(hintText: "Set Password",
                                              suffixIcon: IconButton(
                                                icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureText = !_obscureText;
                                                  });
                                                },
                                              ),

                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                              contentPadding: const EdgeInsets.all(10),


                                            ),

                                          )),
                                    ),
                                    const SizedBox(height: 20,width: 20,),
                                    Text("Confirm password",style: TextStyle(fontSize: 15, color: grey, fontWeight: FontWeight.bold),),
                                    const SizedBox(height: 10,),
                                    SizedBox(
                                      child: Form(

                                          child: TextFormField(
                                            // keyboardType: TextInputType.number,
                                            autofocus: true,
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            obscureText: _obscureText1,
                                            // obscureText: true,
                                            obscuringCharacter: '*' ,
                                            controller: pass,
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Field is empty';
                                              }
                                              if(value==8){
                                                return 'Incomplete Length';
                                              }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              if (value != '' &&
                                                  value.length > 8 &&
                                                  pass1.text.length > 4) {
                                                setState(() {
                                                  btnclr = true;
                                                });
                                              }
                                              else{
                                                setState(() {
                                                  btnclr = false;
                                                });
                                              }
                                            },
                                            decoration: InputDecoration(hintText: "Enter Again",
                                              suffixIcon: IconButton(
                                                icon: Icon(_obscureText1 ? Icons.visibility : Icons.visibility_off),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureText1 = !_obscureText1;
                                                  });
                                                },
                                              ),
                                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                              contentPadding: const EdgeInsets.all(10),


                                            ),
                                          )),
                                    ),
                                    const SizedBox(height: 50,),
                                    SizedBox(
                                        child:  SizedBox(
                                            height: 50,
                                            width: 320,
                                            child: ElevatedButton(onPressed: (){
                                              setState(() {
                                                btnclr = !btnclr;
                                              });
                                            }, style: ElevatedButton.styleFrom(backgroundColor: btnclr?Theme.of(context).primaryColor:fadedBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),child: Text("Change password", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),)))),
                                  ],
                                ),

                              )

                            ],
                          )
                      )
                  )]))
    );
  }
}
