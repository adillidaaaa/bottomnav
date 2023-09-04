import 'package:flutter/material.dart';
import 'package:trail_project/first.dart';
import 'package:trail_project/second.dart';
import 'package:trail_project/third.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  List screen = [const First(), const Second(), const Third()];
  ValueNotifier notifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (context, value, _) {
          return Scaffold(
            body: screen[value],
            backgroundColor: Color.fromARGB(255, 255, 248, 197),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 255, 216, 74),
              title: const Text("Navigation Bar"),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 255, 213, 59),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "home",
                    backgroundColor: Colors.blueGrey),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: "search",
                    backgroundColor: Colors.blueGrey),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: "profile",
                    backgroundColor: Colors.blueGrey),
              ],
              currentIndex: notifier.value,
              onTap: (value) {
                notifier.value = value;
              },
            ),
          );
        });
  }
}
