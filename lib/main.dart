import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle customStyle() {
    return TextStyle(fontSize: 24, color: Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI"),
      ),
      body: Center(
        child: Row(
          children: [
            Text(
              "User",
              style: customStyle(),
            ),
            Text(
              "Interface",
              style: customStyle().copyWith(color: Colors.green),
            ),
          ],
        ),
      ),
      // Stack(
      //   children: [
      //     Center(
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           image: DecorationImage(
      //               fit: BoxFit.fill,
      //               image: Image.asset("assets/images/img1.jpg").image),
      //         ),
      //       ),
      //     ),
      //     SafeArea(
      //       child: Container(
      //         width: double.infinity,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [Text("from Amazon")],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
