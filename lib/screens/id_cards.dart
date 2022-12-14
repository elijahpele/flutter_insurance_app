import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/insurance_card_type/auto_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../models/insurance_card_type/auto_2.dart';
import '../models/insurance_card_type/home_1.dart';
import '../models/umbrella_text.dart';

class IDCards extends StatefulWidget {
  const IDCards({super.key});

  _IDCardState createState() => _IDCardState();
}
class _IDCardState extends State<IDCards>{
  final _controller  = PageController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
            children: <Widget> [
              AppBar(
                centerTitle: false,
                leadingWidth: 0.0,
                title: const UmbrellaText(),
                actions: [
                  IconButton(onPressed: ()=>"",
                      icon: const Icon(
                        CupertinoIcons.profile_circled,
                        color: Colors.red,
                        size: 36,
                      )
                  )
                ],
                backgroundColor: Colors.grey[50],
                shadowColor: Colors.white,
                elevation: 0,
              ),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "Insurance Cards",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.black),
                      ))),

              const SizedBox(height: 10),
              Container(
                  height: 320,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: [
                      MyCard(),
                      MyCard2(),
                      MyCard3(),

                    ],
                  )
              ),
              SizedBox(height: 10),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ScrollingDotsEffect(
                  activeDotColor: Colors.redAccent,
                  dotWidth: 10,
                  dotHeight: 10,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Container(
                      width: 320,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width:1),
                        color: Colors.white70,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget> [
                          Text("Export")

                        ],

                      )
                  )
              )
            ]
        ));
  }
}
