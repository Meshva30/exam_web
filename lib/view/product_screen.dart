import 'package:flutter/material.dart';


import '../utils/productlist.dart';

void main() {
  runApp(const ProductScreen());
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  RangeValues values = const RangeValues(10000, 50000);
  List<String> selectedBrands = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List filteredProducts = productList.where((product) {
      int price = product['price'];
      String brand = product['brand'];

      bool priceFilter = price >= values.start && price <= values.end;
      bool brandFilter =
          selectedBrands.isEmpty || selectedBrands.contains(brand);

      return price >= values.start && price <= values.end;
    }).toList();

    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 250),
                    Row(
                      children: [
                        Text(
                          'New Arrivals',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Men',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'women',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'kids',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 320),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.shopping_cart_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.favorite_border_rounded),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.account_box_outlined),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: height * 3,
                            width: width * 0.25,
                            // color: Colors.blueAccent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Brand',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Nike'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Jordon'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Adiddas'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Fila'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Gucci'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2)),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Balenciaga'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 50,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Price range',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                RangeSlider(
                                  min: 10000,
                                  max: 100000,
                                  divisions: 1000,
                                  values: values,
                                  onChanged: (RangeValues newValues) {
                                    setState(() {
                                      values = newValues;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '${values.start} RWF',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '${values.end} RWF',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 80,
                                  color: Colors.grey,
                                ),

                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 30),
                                    child: Text('Sized',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600
                                      ),)),

                                SizedBox(height: 20,),

                                Padding(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: List.generate(5, (index) => Boxes(num)),
                                      ),
                                      Row(
                                        children: List.generate(5, (index) => Boxes(num)),
                                      ),
                                      Row(
                                        children: List.generate(5, (index) => Boxes(num)),
                                      ),
                                      Row(
                                        children: List.generate(5, (index) => Boxes(num)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                height: height * 3,
                                width: width * 0.7,
                                // color: Colors.yellow,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Only Filtered',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: List.generate(
                                          filteredProducts.length,
                                              (index) => GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  '/third',
                                                  arguments:
                                                  filteredProducts[index]);
                                            },
                                            child: Products(
                                              filteredProducts[index]['img'],
                                              filteredProducts[index]['name'],
                                              filteredProducts[index]['price'],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'The new arrivals',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2,
                                        fontSize: 24,
                                      ),
                                    ),
                                    Row(
                                      children: List.generate(
                                          list.length,
                                              (index) => GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  '/third',
                                                  arguments: list[index]);
                                            },
                                            child: Products(
                                                list[index]['img'],
                                                list[index]['name'],
                                                list[index]['price']),
                                          )),
                                    ),
                                    Row(
                                      children: List.generate(
                                          r2.length,
                                              (index) => GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  '/third',
                                                  arguments: r2[index]);
                                            },
                                            child: Products(
                                                r2[index]['img'],
                                                r2[index]['name'],
                                                r2[index]['price']),
                                          )),
                                    ),
                                    Row(
                                      children: List.generate(
                                          r3.length,
                                              (index) => GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pushNamed(
                                                  '/third',
                                                  arguments: r3[index]);
                                            },
                                            child: Products(
                                                r3[index]['img'],
                                                r3[index]['name'],
                                                r3[index]['price']),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget Products(String img, String name, int price) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 30, 30),
          height: height * 0.4,
          width: width * 0.2,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
          ),
          child: Image.asset(img),
        ),
        SizedBox(height: 10),
        Text(
          '$name',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        Text(
          ' $price RWF',
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ],
    );
  }

  Widget Boxes(int num) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          border: Border.all(color: Colors.grey),
          color: Colors.white),
      child: Text('$num'),
    );
  }
}

int num = 35;
