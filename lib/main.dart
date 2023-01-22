import 'package:flutter/material.dart';
import 'chart_data.dart';

const kInactiveColor = Colors.white;
const kInactiveColors = Color.fromARGB(255, 242, 242, 242);
const kActiveColor = Color.fromARGB(255, 0, 108, 90);
// ignore: non_constant_identifier_names
Color BGcolor = kInactiveColor;
Color BGcolors = kInactiveColors;

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                label: 'Statistics',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: 'wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: 'Profile',
              ),
            ],
            selectedItemColor: const Color.fromARGB(255, 0, 108, 90),
            unselectedItemColor: Colors.black,
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back_ios, color: Colors.black),
                  Text('Statistics', style: TextStyle(color: Colors.black)),
                  Icon(
                    Icons.download,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // SizedBox.fromSize(size: const Size(0, 100)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    UpperButtons('Day'),
                    UpperButtons('Weak'),
                    UpperButtons('Months'),
                    UpperButtons('Year'),
                  ],
                ),
              ),
              Charts(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Top Spending'),
                    Icon(Icons.sort),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  DownButtons(),
                  SizedBox(
                    height: 8,
                  ),
                  DownButtons(),
                  SizedBox(
                    height: 8,
                  ),
                  DownButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperButtons extends StatefulWidget {
  const UpperButtons(this.text, {super.key});

  final String text;

  @override
  State<UpperButtons> createState() => _UpperButtonsState();
}

class _UpperButtonsState extends State<UpperButtons> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: BGcolor,
      ),
      // isSelected:  UpperButtons,
      // child: const Text('Day'),
      onPressed: () {
        setState(() {
          if (BGcolor == kInactiveColor) {
            BGcolor = kActiveColor;
          } else if (BGcolor == kActiveColor) {
            BGcolor = kInactiveColor;
          }
        });
      },
      child: Text(
        widget.text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

class DownButtons extends StatefulWidget {
  const DownButtons({Key? key}) : super(key: key);

  @override
  State<DownButtons> createState() => _DownButtonsState();
}

class _DownButtonsState extends State<DownButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(12),
          backgroundColor: BGcolors,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {
          setState(() {
            if (BGcolors == kInactiveColors) {
              BGcolors = kActiveColor;
            } else if (BGcolors == kActiveColor) {
              BGcolors = kInactiveColors;
            }
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 5,
            ),
            const CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Starbucks',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Text('Jan 12, 2022',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            const SizedBox(width: 100),
            const Text('- \$ 180',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 124, 124))),
            // const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
