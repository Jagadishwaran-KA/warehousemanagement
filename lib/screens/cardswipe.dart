import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    const title = 'Swipe to Navigate';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              key: Key(item),

              // confirmDismiss lets you control whether the item gets removed
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.startToEnd) {
                  // Swiped RIGHT
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        title: '$item - Swiped Right',
                      ),
                    ),
                  );
                } else if (direction == DismissDirection.endToStart) {
                  // Swiped LEFT
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        title: '$item - Swiped Left',
                      ),
                    ),
                  );
                }
                // Return false to prevent dismiss
                return false;
              },

              background: Container(
                color: Colors.green,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
              secondaryBackground: Container(
                color: Colors.blue,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(Icons.arrow_back, color: Colors.white),
              ),

              child: ListTile(title: Text(item)),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: const TextStyle(fontSize: 24))),
    );
  }
}
