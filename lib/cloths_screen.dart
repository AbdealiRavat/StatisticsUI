import 'package:flutter/material.dart';

import 'type_screen.dart';
// import 'shirts_screen.dart';/

class Cloths extends StatelessWidget {
  const Cloths({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cloths Screen',
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 102, 153),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Type()),
                    );
                  },
                  child: const Text('Jeans')),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Type()),
                    );
                  },
                  child: const Text('Shirt')),
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
      ),
    );
  }
}
