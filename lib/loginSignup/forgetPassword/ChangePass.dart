import 'package:flutter/material.dart';

class Changepass extends StatelessWidget {
   const Changepass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Icon(
        Icons.arrow_back_ios,
      ),
      ),
      body: Column(
        children: [
          //Image(image: AssetImage("assests/Chanepass.png"),fit: BoxFit.cover)),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Container(
             width: 330,
             height: 280,
             decoration: const BoxDecoration(
               image:DecorationImage(image: AssetImage("assets/Pass.png"),fit: BoxFit.fill),
             ),
           ),
         ),
          const SizedBox(height: 30,),
          Text("Change Password Sucessfully!",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Theme.of(context).primaryColor,
          ),),
          const SizedBox(height: 40,),
          const Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                Text("You have sucessfully change password",style: TextStyle(
                  fontSize: 18,
                ),
                ),
                Text("Please use the new password when sign-in.",style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ],
            ),
          ),
         const SizedBox(height: 40,),
           Center(
            child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor:Theme.of(context).primaryColor,// same color as the header
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 17), // increase the size of the button
                  textStyle: const TextStyle(fontSize: 18),

                ),
                onPressed: (){

                },
                child: const Text("Ok",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                )
            ),
          ),
        ],
      ),
    );
  }
}
