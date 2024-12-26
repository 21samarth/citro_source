import 'package:flutter/material.dart';

import 'data.dart';
class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  DateTime? lastPressed;
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        final maxDuration = const Duration(seconds: 2);
        final isWarning =
            lastPressed == null || now.difference(lastPressed!) > maxDuration;

        if (isWarning) {
          lastPressed = now;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Press back again to exit'),
              duration: maxDuration,
            ),
          );
          return false; // Do not exit
        }
        return true; // Exit the app
      },
      child: Scaffold(
        body: mainPage[pageindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageindex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (value){
              setState(() {
                pageindex = value;
            },);},
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home', tooltip: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.event_available_outlined),
                  label: 'Events',
                  tooltip: "Events"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined),
                  label: 'Notification',
                  tooltip: "Notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                  tooltip: "Settings"),
            ]),
      ),
    );
  }
}
