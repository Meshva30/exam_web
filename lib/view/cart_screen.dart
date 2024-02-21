import 'package:flutter/material.dart';

import '../utils/cartList.dart';



class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int sum() {
    int total = 0;

    for (var item in cart) {
      int price = item['price'];
      total += price * count;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
                  const SizedBox(width: 250),
                  const Row(
                    children: [
                      Text(
                        'New Arrivals',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
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
                  const SizedBox(width: 320),
                  const Row(
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
            const Divider(
              height: 0,
              color: Colors.grey,
            ),
            SizedBox(
              height: height,
              width: width,
              // color: Colors.yellow,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: height,
                        width: width * 0.7,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Your Shopping cart',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              Column(
                                children: List.generate(
                                    cart.length,
                                        (index) => Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          margin:
                                          const EdgeInsets.symmetric(
                                              vertical: 20),
                                          height: height * 0.15,
                                          width: width,
                                          decoration: const BoxDecoration(
                                              color: Color(0xFFF5F5F5)),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                height: height * 0.1,
                                                width: width * 0.05,
                                                decoration:
                                                const BoxDecoration(
                                                    color:
                                                    Colors.white),
                                                child: Image.asset(
                                                  cart[index]['img'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 50,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(cart[index]['name']),
                                                  Text(
                                                      '${cart[index]['price']}'),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 150,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        if (count > 1) {
                                                          setState(() {
                                                            count--;
                                                          });
                                                        }
                                                      },
                                                      child: const Icon(
                                                          Icons.remove)),
                                                  Container(
                                                    alignment:
                                                    Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets
                                                        .all(5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadiusDirectional
                                                            .circular(
                                                            8),
                                                        border: Border.all(
                                                            color: Colors
                                                                .grey),
                                                        color:
                                                        Colors.white),
                                                    child: Text('$count'),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          count++;
                                                        });
                                                      },
                                                      child: const Icon(
                                                          Icons.add)),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 350,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    cart.removeAt(index);
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.black,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 50, 20, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Order Summary',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                'Sub total',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                '${sum()} RWF',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Delivery fee',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                '0RWF',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 2,
                            width: 380,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 262,
                              ),
                              Text(
                                '${sum()} RWF',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.blueAccent,
                            thickness: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.06,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Text(
                              'Proceed to checkout',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
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

int count = 1;