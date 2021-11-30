import 'package:flutter/material.dart';
import 'cutom_text.dart';
import 'package:testfortext/models/category.dart';

List<category> categoriesList = [
  category(name: 'salad', image: "assets/1.jpg"),
  category(name: 'soup', image: "assets/2.jpg"),
  category(name: 'starter', image: "assets/3.jpg"),
  category(name: 'steak', image: "assets/4.jpg"),
  category(name: 'food', image: "assets/5.jpg"),
  category(name: 'soup', image: "assets/1.jpg"),
  category(name: 'burger', image: "assets/2.jpg"),
  category(name: 'pizza', image: "assets/3.jpg"),
];

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  //const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.black,
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.red,
                    //       offset: Offset(4, 6),
                    //       blurRadius: 20),
                    // ]
                  ),
                  child: Image.asset(
                    "${categoriesList[index].image}",
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomText(text: categoriesList[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}
