import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 245, 249, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 245, 249, 1),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        centerTitle: true,
        title: const Text(
          'About Us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/1.png"),
                    width: 130,
                    height: 140,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adaptive",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      Text(
                        "E-Learning App",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 500,
                alignment: Alignment.center,
                child: Text(
                  "is a set of techniques oriented to offer online students a personal and unique experience, with the final goal of maximizing their performance.",
                  style: TextStyle(fontSize: 21),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/2.png"),
                    width: 130,
                    height: 140,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 200,
                          child: Text(
                            "The objective of Adaptive E-Learning is being able to capture those diferencies and",
                            style: TextStyle(fontSize: 21),
                          )),
                    ],
                  )
                ],
              ),
              Container(
                width: 500,
                alignment: Alignment.center,
                child: Text(
                  "translate them into contents and training processes which are relevant for each and every individual student.",
                  style: TextStyle(fontSize: 21),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Center(
                    child: Text(
                      "Meet Our Team",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image:
                        DecorationImage(image: AssetImage("assets/3.png"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Marco Sardido",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("CEO/Owner")
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Keith Basilio",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Senior Software Engineer")
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image:
                        DecorationImage(image: AssetImage("assets/4.png"))),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image:
                        DecorationImage(image: AssetImage("assets/5.png"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Allysa Stban",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Graphic Designer")
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        "Jashua Brilliantes",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("System Analyist")
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image:
                        DecorationImage(image: AssetImage("assets/6.png"))),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image:
                        DecorationImage(image: AssetImage("assets/7.png"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Johnley Jara",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("IT Specialist")
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Jayra Jaucian",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Marketing Manager")
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image:
                        DecorationImage(image: AssetImage("assets/8.png"))),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
