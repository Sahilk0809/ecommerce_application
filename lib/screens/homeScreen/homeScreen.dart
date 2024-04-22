import 'package:ecommerce_application/utils/list.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import '../../home/component/colors/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 20),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorBlack2,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/mobileImg/profile.jpg'),
                              ),
                            ),
                          ),
                          const Text(
                            'Sahil Kashyap',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 115,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/cart');
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: colorBlack2,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin:
                          const EdgeInsets.only(left: 7, top: 10, bottom: 10),
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        color: colorBlack2,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Search',
                            style:
                                TextStyle(color: Colors.white12, fontSize: 20),
                          ),
                          SizedBox(width: 270),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        colorBlack1,
                        colorBlack2,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/mobileImg/banner.avif'),),
                  ),
                ),
                Column(
                  children: List.generate(
                    productDetails.length,
                    (index) => productBox(index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row productBox(int index) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 176.3,
          height: 220,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorBlack1,
                colorBlack2,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 2),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: colorBlack2,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-3, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    boolName = true;
                    selectedIndex = index;
                    Navigator.of(context).pushNamed('/detail');
                  });
                },
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(productDetails[index]['img']),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Text(
                productDetails[index]['details'],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Text(
                'Rs ${productDetails[index]['price']}/-',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: colorBlack2,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(-1, -1),
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 176.3,
          height: 220,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorBlack1,
                colorBlack2,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 2),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: colorBlack2,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(-3, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    boolName = false;
                    selectedIndex = index;
                    Navigator.of(context).pushNamed('/detail');
                  });
                },
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(productDetails2[index]['img']),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Text(
                productDetails2[index]['details'],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Text(
                'Rs ${productDetails2[index]['price']}/-',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: colorBlack2,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(-1, -1),
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
