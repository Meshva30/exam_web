import 'package:flutter/material.dart';


void main()
{
  runApp(const Homescreen());
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(100, 20, 30, 0),
                width: width,
                color: Color(0xFFEDEFEF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/logo.png',fit: BoxFit.cover,),

                        const SizedBox(width: 250),

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/second');
                              },
                              child: const Text('New Arrivals',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),),
                            ),

                            SizedBox(width: 30,),

                            Text('Men',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),

                            SizedBox(width: 30,),

                            Text('women',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),

                            SizedBox(width: 30,),

                            Text('kids',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                          ],
                        ),

                        SizedBox(width: 320),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.shopping_cart_outlined),
                              SizedBox(width: 20,),
                              Icon(Icons.favorite_border_rounded),
                              SizedBox(width: 20,),
                              Icon(Icons.account_box_outlined),
                            ],
                          ),
                        ),


                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                          alignment:Alignment.topLeft,
                          height: height*0.5,
                          width: width*0.3,
                          // color: Colors.red,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Puma',style: TextStyle(
                                fontSize: 72,
                                fontWeight: FontWeight.w600,
                              ),),

                              Text('Running SX',style: TextStyle(
                                fontSize: 72,
                                fontWeight: FontWeight.w600,
                              ),),

                              Text('The shoe that moved mountains for eternity and still does so with a swift touch of modernism',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey
                              ),
                                maxLines: 2,),

                              SizedBox(height: 20,),

                              Text('62, 000RWF',style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),),

                              SizedBox(height: 20,),

                              Container(
                                alignment: Alignment.center,
                                height: height*0.05,
                                width: width*0.08,
                                decoration: BoxDecoration(
                                    color: Colors.red
                                ),
                                child: Text('Add to cart',style:
                                TextStyle(
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 30),

                        Container(
                            margin: EdgeInsets.fromLTRB(150, 100, 0, 0),
                            height: height*0.5,
                            width: width*0.4,
                            decoration: BoxDecoration(

                            ),
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: height*0.45,
                                  width: width*0.45,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                          begin: Alignment.centerRight,
                                          colors: [
                                            Color(0xFFF3E7E9),
                                            Color(0xFFF2E8EB),
                                          ]
                                      )
                                  ),
                                ),
                                Image.asset('assets/images/Rectangle 4.png',
                                    width: width*0.3,
                                    fit: BoxFit.fill),
                              ],
                            )
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: height*0.05,
                          width: width*0.03,
                          decoration: BoxDecoration(
                              color: Color(0xFFF2E9EC),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )
                          ),
                          child: Image.asset('assets/images/Rectangle 4.png',fit: BoxFit.fill,),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: height*0.05,
                          width: width*0.03,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Image.asset('assets/images/R2.png',),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: height*0.05,
                          width: width*0.03,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Image.asset('assets/images/R3.png'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          height: height*0.05,
                          width: width*0.03,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Image.asset('assets/images/R4.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: Text('All the new arrivals',style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height*0.4,
                                width: width*0.2  ,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Image.asset('assets/images/Products/P1.png'),
                              ),
                              SizedBox(height: 10),
                              Text('Addidas Beluga',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),),

                              Text('35, 000RWF',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height*0.4,
                                width: width*0.2  ,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Image.asset('assets/images/R15.png'),
                              ),
                              SizedBox(height: 10),
                              Text('Jordan delta 2',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),),

                              Text('35, 000RWF',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height*0.4,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Image.asset('assets/images/R12.png'),
                              ),
                              SizedBox(height: 10),
                              Text('Nike Zoom',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),),

                              Text('35, 000RWF',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height*0.4,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Image.asset('assets/images/R13.png'),
                              ),
                              SizedBox(height: 10),
                              Text('Nike Air Jordan XT',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),),

                              Text('35, 000RWF',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height*0.4,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: Image.asset('assets/images/R14.png'),
                              ),
                              SizedBox(height: 10),
                              Text('Nike Wobler',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),),

                              Text('35, 000RWF',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('View all the new arrivals',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                        Icon(
                          Icons.arrow_forward_rounded,
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height*0.4,
                          width: width*0.4,
                          decoration: BoxDecoration(
                            // color: Colors.blueAccent,
                          ),
                          child: Image.asset('assets/images/good.png'),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height*0.4,
                          width: width*0.6,
                          decoration: BoxDecoration(
                            // color: Colors.blueAccent,
                          ),
                          child: Image.asset('assets/images/well.png'),
                        )
                      ],
                    ),
                    SizedBox(height: 110,),
                    Divider(
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/logo.png'),
                            ],
                          ),

                          SizedBox(height: 20,),

                          Container(
                            width: width*0.4,
                            child: Text('We don’t just sell shoes, we sell memories and collectibles. We collect the best in the best with an attention to all little details. we know that shoes speaks louder than words that’s why we’ve mastered the science of good sneakers.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.65),
                              ),),
                          ),

                          SizedBox(height: 50),

                          Row(
                            children: [
                              Text('Don’t missout on once-in-a-while-deals:',style: TextStyle(
                                color: Colors.black.withOpacity(0.65),
                              ),),
                              SizedBox(width: 10,),
                              Container(
                                  height: height*0.035,
                                  width: width*0.02,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F5F5),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Image.asset('assets/images/t.png')
                              ),
                              SizedBox(width: 10,),
                              Container(
                                  height: height*0.035,
                                  width: width*0.02,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F5F5),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Image.asset('assets/images/i.png')
                              ),
                              SizedBox(width: 10,),
                              Container(
                                  height: height*0.035,
                                  width: width*0.02,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F5F5),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Image.asset('assets/images/f.png')
                              ),

                              SizedBox(width: 200,),

                              Text('Support line: +250 788 467 808'),

                              SizedBox(width: 300,),

                              Text('Copyright  2021 © Sneaker City ltd'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}