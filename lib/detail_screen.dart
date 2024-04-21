import 'package:ecommerce_application/cart.dart';
import 'package:ecommerce_application/homeScreen.dart';
import 'package:ecommerce_application/utils/list.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/component/colors/color.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorBlack1,
                colorBlack2,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 15, 0, 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorBlack2,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 6, 0, 0),
                      child: const Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/cart');
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorBlack2,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(5, 5),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        colorBlack1,
                        colorBlack2,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: (boolName == true)
                      ? Image.asset(productDetails[selectedIndex]['img'])
                      : Image.asset(productDetails2[selectedIndex]['img']),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: colorBlack2,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child: Text(
                              '${(boolName == true) ? productDetails[selectedIndex]['details'] : productDetails2[selectedIndex]['details']}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Image.asset(
                              'assets/mobileImg/rating.webp',
                              width: 120,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              'Rs. ${(boolName == true) ? productDetails[selectedIndex]['price'] : productDetails2[selectedIndex]['price']}/-',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        width: double.infinity,
                        child: const Text(
                          'Loremorem Ipsum has been the industrys standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s...',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: const Text(
                                'RAM : ',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 50,
                            margin: const EdgeInsets.fromLTRB(10, 5, 20, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26,
                            ),
                            child: const Text(
                              '4GB',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 50,
                            margin: const EdgeInsets.fromLTRB(10, 5, 20, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26,
                            ),
                            child: const Text(
                              '6GB',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 50,
                            margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26,
                            ),
                            child: const Text(
                              '8GB',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: const Text(
                                'Storage : ',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            margin: const EdgeInsets.fromLTRB(10, 5, 20, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black26,
                            ),
                            child: const Text(
                              '64GB',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            margin: const EdgeInsets.fromLTRB(10, 5, 20, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black26,
                            ),
                            child: const Text(
                              '128GB',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black26,
                            ),
                            child: const Text(
                              '256GB',
                              style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (boolName == true) {
                                    if (productDetails[selectedIndex]
                                            ['cartBool'] ==
                                        false) {
                                      cartList
                                          .add(productDetails[selectedIndex]);
                                      productDetails[selectedIndex]['total'] =
                                          productDetails[selectedIndex]
                                              ['price'];
                                      productDetails[selectedIndex]
                                          ['cartBool'] = true;
                                      amount = productDetails[selectedIndex]
                                          ['price']+amount;
                                    }
                                  } else {
                                    if (productDetails2[selectedIndex]
                                            ['cartBool'] ==
                                        false) {
                                      cartList
                                          .add(productDetails2[selectedIndex]);
                                      productDetails2[selectedIndex]['total'] =
                                          productDetails2[selectedIndex]
                                              ['price'];
                                      productDetails2[selectedIndex]
                                          ['cartBool'] = true;
                                      amount = productDetails2[selectedIndex]
                                          ['price']+amount;
                                    }
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.fromLTRB(10, 30, 10, 0),
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset: Offset(-2, 2),
                                    ),
                                  ],
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.black38,
                                      Colors.white12,
                                    ],
                                    // begin: Alignment.bottomLeft,
                                    // end: Alignment.topRight,
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.add_shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 25,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

double amount = 0;
