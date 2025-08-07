import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(50, (index) => "Item ${index + 1}");

    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter6'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,  
          mainAxisSpacing: 8.0,  
          crossAxisSpacing: 8.0,  
          childAspectRatio: 0.9,  
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int idx) {
          // สร้างเชดสีไล่ลำดับ 6 สี
          List<Color> gradientColors = [
            Colors.teal[100]!,
            Colors.teal[200]!,
            Colors.teal[300]!,
            Colors.teal[400]!,
            Colors.teal[500]!,
            Colors.teal[600]!,
          ];

          return Container(
            color: gradientColors[idx % 6],  
            child: Center(
              child: Text(
                items[idx],
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
