import 'package:flutter/material.dart';
import '../../theme.dart';
import 'ResetPassword.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var pass = TextEditingController();
  bool btnclr=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fadedBlue,
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,

        title:const Text('Forgot Password'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: [

              Padding(padding: const EdgeInsets.only(top: 20,),
                child: Container(
                    height: 380,
                    width: 350,

                    padding: const EdgeInsets.only(left: 10,top: 10,right: 10),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: scaffoldBackgroundColor,

                    ),

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        

                        Padding(padding: const EdgeInsets.only(left: 10),
                       child:  Text("Type a code",style:
                           TextStyle(fontSize: 15, color: grey, fontWeight: FontWeight.bold),),
                        ),
                        Padding(padding: const EdgeInsets.only(left:10,top: 20),

                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 210,
                                child:  Form(
                                  child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      autofocus: true,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      // obscureText: true,
                                      controller: pass,
                                      validator: (value){
                                        if(value!.isEmpty){
                                          return 'Field is empty';
                                        }
                                        if(value==4){
                                          return 'Incomplete Length';
                                        }
                                        return null;
                                      },
                                      onChanged: (value) {
                                        if (value != '') {
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
                                      decoration: InputDecoration(hintText: "Code",
                                        // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.unfold_more)),

                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                        contentPadding: const EdgeInsets.all(10),


                                      )
                                  ),
                                ),
                              ),

                              const SizedBox(width: 5,),

                              SizedBox(
                                child: ElevatedButton(onPressed: (){
                                },style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))), child:  Text("Resend",style: TextStyle(color: Colors.white),)),
                              )
                
                            ],
                          ),
                        ),

                        Padding(padding: const EdgeInsets.all(10),

                          child: Text.rich(
                          TextSpan(
                          children: [
                          TextSpan(
                          text: 'We texted you a code to verify your phone number, ',
                          style: TextStyle(color: grey),
                        ),
                        TextSpan(
                          text: '(+84) 0398829xxx',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                ),),
                       Padding(padding: const EdgeInsets.all(10),
                          child: Text("This code will expired 10 minutes after this message. If you don't get a message.",style: TextStyle(fontSize: 16, color: Colors.grey)),),
                        Padding(padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
                          child: SizedBox(

                          height: 50,
                          width: 320,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context,

                                MaterialPageRoute(builder: (context) => const Resetpassword()));
                            setState(() {
                              btnclr = !btnclr;
                            });
                          }, style: ElevatedButton.styleFrom(backgroundColor: btnclr?Theme.of(context).primaryColor:fadedBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),child: Text("Change password", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        ))

                      ],
                    )

                ),

              ),

              const SizedBox(height: 80,),
              Text("Change your phone number",style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),),

            ]),

      ),
    );
  }
}

