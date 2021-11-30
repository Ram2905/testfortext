import 'package:flutter/material.dart';
import 'package:testfortext/widgets/categories.dart';
import 'widgets/cutom_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Restauraunt Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            CustomText(
              text: "What are you looking for ?",
              size: 18.0,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                blurRadius: 4),
                          ]),
                      child: const ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                        title: TextField(
                          decoration: InputDecoration(
                              hintText: 'Find food and restaurant',
                              border: InputBorder.none),
                        ),
                        trailing: Icon(
                          Icons.filter_list,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Categories(),
                  // const SizedBox(
                  //   height: 2,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: 'Featured',
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                  ///////////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 220,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 220,
                                width: 200,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  //borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      "${categoriesList[index].image}",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.contain,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: CustomText(
                                              text:
                                                  "${categoriesList[index].name}"),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                            color: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    // Image.asset(
                                    //   'assets/2.jpg',
                                    //   height: 140,
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
