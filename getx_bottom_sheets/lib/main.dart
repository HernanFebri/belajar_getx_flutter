import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showModalBottomSheet(
          //   context: context,
          //   builder: (context) {
          //     return Padding(
          //       padding: EdgeInsets.only(
          //           bottom: MediaQuery.of(context).viewInsets.bottom),
          //       child: Container(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          //         color: Colors.amber,
          //         child: Center(
          //             child: ListView(
          //           children: const [
          //             TextField(
          //               decoration: InputDecoration(
          //                 border: OutlineInputBorder(),
          //               ),
          //             ),
          //             SizedBox(
          //               height: 20,
          //             ),
          //             TextField(
          //               decoration: InputDecoration(
          //                 border: OutlineInputBorder(),
          //               ),
          //             ),
          //             SizedBox(
          //               height: 20,
          //             ),
          //             TextField(
          //               decoration: InputDecoration(
          //                 border: OutlineInputBorder(),
          //               ),
          //             ),
          //             SizedBox(
          //               height: 20,
          //             ),
          //             TextField(
          //               decoration: InputDecoration(
          //                 border: OutlineInputBorder(),
          //               ),
          //             ),
          //             SizedBox(
          //               height: 20,
          //             ),
          //             TextField(
          //               decoration: InputDecoration(
          //                 border: OutlineInputBorder(),
          //               ),
          //             ),
          //           ],
          //         )),
          //       ),
          //     );
          //   },
          // );

          Get.bottomSheet(Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              color: Colors.amber,
              child: Center(
                  child: ListView(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Save"))
                ],
              )),
            ),
          ));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
