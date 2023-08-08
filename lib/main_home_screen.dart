import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.black,
              Colors.red,
              Colors.orangeAccent,
              Color(0xffECD670),
              Color(0xffECD670),
            ],
            radius: 1.4,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/menuss.png',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Badge(
                            child: Image(
                              height: 20,
                              width: 20,
                              image: AssetImage('assets/i2.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Your Current Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "\$ 1,500.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, left: 2.0),
                            child: Container(
                              height: 250,
                              width: 200,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(blurRadius: 2, color: Colors.black),
                                ],
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 118.0, top: 12),
                                      child: Image(
                                        height: 35,
                                        image: AssetImage('assets/i5.png'),
                                      ),
                                    ),
                                    Image(
                                      height: 50,
                                      image: AssetImage('assets/i4.png'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'DEBIT CARD',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'KYO YAMAMOTO',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '12/24',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100.0),
                                      child: Image(
                                        height: 60,
                                        image: AssetImage('assets/master.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0, left: 2.0),
                            child: Container(
                              height: 250,
                              width: 200,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(blurRadius: 2, color: Colors.black),
                                ],
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 118.0, top: 12),
                                      child: Image(
                                        height: 35,
                                        image: AssetImage('assets/i5.png'),
                                      ),
                                    ),
                                    Image(
                                      height: 50,
                                      image: AssetImage('assets/i4.png'),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'DEBIT CARD',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'KYO YAMAMOTO',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '12/24',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100.0),
                                      child: Image(
                                        height: 60,
                                        image: AssetImage('assets/master.png'),
                                      ),
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
