import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomLotteryApp(),
    ),
  );
}

class RandomLotteryApp extends StatefulWidget {
  const RandomLotteryApp({Key? key}) : super(key: key);

  @override
  State<RandomLotteryApp> createState() => _RandomLotteryAppState();
}

class _RandomLotteryAppState extends State<RandomLotteryApp> {
  Random r = Random();
  Random y = Random();

  @override
  Widget build(BuildContext context) {
    List k = List.generate(18, (index) => Colors.primaries[index]);
    int Y = y.nextInt(18);
    int i1 = r.nextInt(10);
    int i2 = r.nextInt(10);
    int i3 = r.nextInt(10);

    Size s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery App"),
        centerTitle: true,
        backgroundColor: Colors.primaries[Y].shade700,
        actions: [
          InkWell(
            onTap: () {
              setState(() {});
            },
            child: Icon(Icons.spoke_outlined),
          ),
          SizedBox(
            width: s.width * 0.05,
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.primaries[Y].shade400,
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: s.height * 0.099,
                      decoration: BoxDecoration(
                        color: Colors.primaries[Y].shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$i1",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: s.height * 0.099,
                      decoration: BoxDecoration(
                        color: Colors.primaries[Y].shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$i2",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: s.height * 0.099,
                      decoration: BoxDecoration(
                        color: Colors.primaries[Y].shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$i3",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: s.height * 0.09,
                      width: s.width * 0.42,
                      decoration: BoxDecoration(
                        color: Colors.primaries[Y].shade50,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.primaries[Y].shade700,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Get Lottery",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
