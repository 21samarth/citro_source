import 'package:flutter/material.dart';

import '../pdf/E_Pass_Pdf.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
        child: Text("Home"),
      ),
      floatingActionButton: TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice(),));
      }, child: Text("PDF",style: TextStyle(color: Colors.black),)),
    );
  }
}
