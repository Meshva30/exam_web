import 'package:flutter/material.dart';

import '../utils/cartList.dart';

void main()
{
  runApp(const SelectedScreen());
}

class SelectedScreen extends StatefulWidget {
  const SelectedScreen({super.key});

  @override
  State<SelectedScreen> createState() => _SelectedScreenState();
}

class _SelectedScreenState extends State<SelectedScreen> {
  @override
  Widget build(BuildContext context) {

    var productdata = ModalRoute.of(context)!.settings.arguments as Map;                  ;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
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
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Men',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'women',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'kids',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 320),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/four');
                          },
                          child: Icon(Icons.shopping_cart_outlined)),
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
              height: 0,
              color: Colors.grey,
            ),
            Container(
              height: height,
              width: width,
              // color: Colors.yellow,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: height,
                        width: width*0.7,
                        color: Color(0xFFF5F5F5),
                        child:Container(
                          margin: EdgeInsets.fromLTRB(50, 100, 50, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(productdata['name'],style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  Icon(
                                      Icons.favorite_border_rounded
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                '${productdata['price']}',style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),),

                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 250),
                                height: height*0.5,
                                width: width*0.5,
                                decoration: BoxDecoration(
                                  // color: Colors.blueAccent,

                                ),
                                child: Image.asset(productdata['img'],fit: BoxFit.cover,),
                              )

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 50, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height: 20,),
                        Container(
                          // color: Colors.pink,
                          width: width*0.21,
                          child: Text("The Jordan Delta 2 offers a fresh, fearless take on the features you want: durability, comfort and an attitude that's Jordan to the core. We updated design lines and swapped out some components. The 2 still has that clashing combination of supportive and space age-like materials, with lots of different textures and heavy stitching to create a look that's both adventurous and iconic.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14
                            ),
                            maxLines: 8,),
                        ),

                        SizedBox(height: 30,),

                        Container(
                          height: 2,
                          width: 380,
                          color: Colors.black,
                        ),
                        // Divider(
                        //   height: 100,
                        //   color: Colors.blueAccent,
                        //   thickness: 10,
                        // ),
                        SizedBox(height: 30,),


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

                        SizedBox(height: 20,),

                        Container(
                          height: 2,
                          width: 380,
                          color: Colors.black,
                        ),

                        SizedBox(height: 20,),

                        InkWell(
                          onTap: () {
                            setState(() {
                              cart.add(productdata);
                            });

                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height*0.06,
                            width: width*0.07,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Text('Add to cart',style: TextStyle(
                                color: Colors.white
                            ),),
                          ),
                        ),
                      ],
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
