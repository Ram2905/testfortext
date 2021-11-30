import 'package:flutter/material.dart';
import 'package:testfortext/widgets/categories.dart';
import 'package:testfortext/widgets/cutom_text.dart';
import 'package:testfortext/models/products.dart';

List<Product> productList = [
  Product(
      name: 'Cereals',
      image: "assets/1.jpg",
      rating: 4.2,
      vendor: 'GoodFood',
      wishList: true,
      price: 5.99),
  Product(
      name: 'Soup',
      image: "assets/2.jpg",
      rating: 4.5,
      vendor: 'GoodFood',
      wishList: false,
      price: 6),
  Product(
      name: 'Tacos',
      image: "assets/3.jpg",
      rating: 3.5,
      vendor: 'GoodFood',
      wishList: false,
      price: 5.99),
  Product(
      name: 'Cereals',
      image: "assets/4.jpg",
      rating: 4,
      vendor: 'GoodFood',
      wishList: true,
      price: 8),
  Product(
      name: 'Cereals',
      image: "assets/5.jpg",
      rating: 4.2,
      vendor: 'GoodFood',
      wishList: true,
      price: 7),
];

class Featured extends StatelessWidget {
//const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
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
                      "${productList[index].image}",
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomText(text: "${productList[index].name}"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: productList[index].wishList
                              ? Icon(
                                  Icons.favorite,
                                  size: 18,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  size: 18,
                                  color: Colors.red,
                                ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: CustomText(
                                text: '${productList[index].rating}', //"4.7",
                                size: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 16,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 16,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 16,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(
                            text: '${productList[index].price}',
                            //color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                    // Image.asset(
                    //   'assets/2.jpg',
                    //   height: 140,
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
