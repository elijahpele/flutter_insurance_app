import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/umbrella_text.dart';
import 'claim_details.dart';
import 'id_cards.dart';

class Claims extends StatefulWidget {
  const Claims({super.key});

  _ClaimState createState() => _ClaimState();
}

class _ClaimState extends State<Claims> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            UmbrellaText()
          ]),
      leading: const Icon(
        CupertinoIcons.umbrella_fill,
        color: Colors.red,
        size: 38.0,
      ),
      backgroundColor: Colors.grey[50],
      shadowColor: Colors.white,
      elevation: 0,
    ),
    body: ListView(
  children: <Widget>[
    SizedBox(height:40),
    Align(
        alignment: Alignment.centerLeft,
        child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Select a policy",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.grey[800]),
                )
              ],
            )
            )),
    SizedBox(height:40),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 4),
  child: Container(
      width: 360,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Colors.grey),
        color: Colors.white70,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
          Widget>[
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 27,
              child: Icon(CupertinoIcons.car_detailed, color: Colors.red),
            ),
          ),
          title: const Text(
            "2020 Ford Focus SE",
            style: TextStyle(color: Colors.black),
          ),
          subtitle: const Text('#890012121'),
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ClaimDetails())),
          /*
          trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const IDCards()))),

           */
        ),
        const Divider(
          thickness: 2,
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 27,
              child: Icon(CupertinoIcons.car_detailed, color: Colors.red),
            ),
          ),
          title: const Text(
            "2017 Honda Civic",
            style: TextStyle(color: Colors.black),
          ),
          subtitle: const Text('#8900046688'),
          /*
          trailing: Checkbox(value: true, onChanged: (value)=,)IconButton(
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              onPressed: () => ""),
              */
        ),
      ]),
    ),),
    SizedBox(height: 20),
    ]
    ),
  );
}
}