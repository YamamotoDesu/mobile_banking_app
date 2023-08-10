import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool onFinish = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xff3C382D),
              Colors.black,
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
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16.0,
            ),
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
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Detail",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.credit_card,
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
                const Row(
                  children: [
                    Icon(
                      Icons.upgrade_sharp,
                      color: Colors.green,
                    ),
                    Text(
                      '3.10% More than last month',
                      style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    height: 170,
                    width: 300,
                    child: SfSparkLineChart(
                      color: Colors.yellow,
                      data: const <double>[
                        1,
                        5,
                        40,
                        0,
                        1,
                        30,
                        7,
                        70,
                        4,
                        10,
                        5,
                        7,
                        8,
                        9,
                        100,
                        110,
                        120
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'D',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'M',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            '5M',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'Y',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'ALL',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'You have received \$ 1,500.00 from Yamamoto',
                        style: TextStyle(
                          fontFamily: (''),
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '-\$152',
                          style: TextStyle(
                            fontFamily: (''),
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'PayPal',
                          style: TextStyle(
                            fontFamily: (''),
                            fontSize: 20,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SwipeableButtonView(
                    onFinish: () {},
                    onWaitingProcess: () {
                      Future.delayed(const Duration(seconds: 2), () {
                        setState(() {
                          onFinish = false;
                        });
                      });
                    },
                    activeColor: const Color(0xffF2E6CC),
                    buttonWidget: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange,
                      ),
                      child: const Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                      ),
                    ),
                    buttonText: 'Confirm Payment Now',
                    buttontextstyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
