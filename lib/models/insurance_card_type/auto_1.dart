import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class  MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:25),
        child: Card(
          elevation:10,
          child: Container(
              width: 320,
              padding: EdgeInsets.all(4),
              /*
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width:1),
                color: Colors.white70,
                //shape: BoxShape.circle
              ),

               */
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget> [
                    ListTile(
                      visualDensity: VisualDensity(vertical: -3),
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 21,
                          child:Icon(
                              CupertinoIcons.car_detailed,
                              size: 24,
                              color: Colors.redAccent
                          ),
                        ),
                      ),

                      title: Text(
                          "2017 Mitsubishi Lancer",
                          style: TextStyle(
                              fontWeight: FontWeight.w500
                          )

                      ),
                      subtitle: Text("Auto"),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text("Pele, Elijah"),
                      subtitle: Text("Jun 1- Jan 1, 2023"),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text("Policy Number"),
                      subtitle: Text("CAFEB-ABE999"),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text("VIN"),
                      subtitle: Text("000000188998EEEGGKKPP"),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(vertical: -3),
                      title: Text("State"),
                      subtitle: Text("Texas"),
                    )
                  ]
              )
          ),
        )

    );
  }
}