import 'package:flutter/material.dart';

class Type extends StatelessWidget {
  const Type({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Type Screen',
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
                child: TextButton(onPressed: () {}, child: const Text('Denim')),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                    TextButton(onPressed: () {}, child: const Text('Formal')),
              ),
              ElevatedButton(
                child: const Text('Back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ))),
    );
  }
}
