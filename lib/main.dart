import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEFEDE1),
        appBar: AppBar(
          title: SvgPicture.asset(
            "assets/basket.svg",
            height: 30,
            width: 30,
            fit: BoxFit.scaleDown,
            color: const Color(0xFF68765C),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFEFEDE1),
          elevation: 0.0,
          leading: const Icon(Icons.arrow_back, color: Color(0xFF68765C)),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                for (var i = 0; i < 2; ++i)
                  Dismissible(
                    key: Key("$i"),
                    background: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: const Icon(Icons.close_outlined)),
                        )),
                    child: Card(
                        elevation: 10,
                        color: const Color(0xFFEFEDE1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 130,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.network(
                                  "http://bananatree.co.uk/wp-content/uploads/2021/09/food.png",
                                  fit: BoxFit.contain,
                                ),
                              )),
                              const Expanded(
                                  child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: "Food Food",
                                    style: TextStyle(fontSize: 16)),
                                TextSpan(text: "\n\n"),
                                TextSpan(
                                    text: "13 SR",
                                    style: TextStyle(fontSize: 13)),
                              ]))),
                              Expanded(
                                  child: Row(
                                children: const [
                                  Expanded(
                                      child: Icon(Icons.add_circle_outline)),
                                  Expanded(child: Center(child: Text("1"))),
                                  Expanded(
                                      child: Icon(Icons.remove_circle_outline))
                                ],
                              ))
                            ],
                          ),
                        )),
                  )
              ],
            )),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    children: const [
                      Expanded(child: Center(child: Text("Total"))),
                      Expanded(
                          child: Center(
                              child: Text("33 SR",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))))
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xFF68765C),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("Complete order",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          ],
        ));
  }
}
