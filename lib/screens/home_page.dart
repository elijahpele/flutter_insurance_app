import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/screens/claim.dart';
import 'package:insurance/screens/id_cards.dart';
import '../models/umbrella_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context
      ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0.0,
        title: const UmbrellaText(),
        actions: [
          IconButton(
              onPressed: () => "",
              icon: const Icon(
                CupertinoIcons.profile_circled,
                color: Colors.red,
                size: 36,
              ))
        ],
        backgroundColor: Colors.grey[50],
        shadowColor: Colors.white,
        elevation: 0,
      ),
        //body: Column(children: <Widget>[
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    "Welcome, Elijah!",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Colors.black),
                  ))),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "My Policies",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey[800]),
                  ))),
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
                  "Auto",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text('2020 Ford Focus SE\n#890012121'),
                trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_sharp),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const IDCards()))),
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
                  "Auto",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text('2017 Honda Civic\n#8900466888'),
                trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_sharp),
                    onPressed: () => ""),
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
                    child: Icon(CupertinoIcons.house_fill, color: Colors.red),
                  ),
                ),
                title: const Text(
                  "Homeowner",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text('500 W. University\n#1000001245'),
                trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_sharp),
                    onPressed: () => ""),
              ),
            ]),
          ),),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Claims",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey[800]),
                  ))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                  width: 360,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 27,
                              child: Icon(CupertinoIcons.doc_plaintext,
                                  color: Colors.black),
                            ),
                          ),
                          title: const Text(
                            "Auto Claim",
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: const Text('2017 Honda Civic\n'
                              'Incident Date: 09/01/2022'),
                          onTap: () => "",
                        ),
                        ListTile(
                          title: Text("Open"),
                          subtitle: Text("Claims #: 0567495302"),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Container(
                          width: 200,
                          height: 30,
                          child: ElevatedButton(
                              child: Text("Start a claim"),
                              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Claims()))),
                        ),
                      ]))),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "My Bills",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey[800]),
                  ))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                  width: 360,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: const Text(
                          "\$128.02",
                          style: TextStyle(color: Colors.black,
                          fontSize: 26,
                          )
                        ),
                        subtitle: const Text('Due Dec 10, 2022\n'
                            'Auto + Home'),
                        trailing: TextButton(
                          child: Text("View"),
                          onPressed: ()=>"",
                        ),
                        onTap: () => "",
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                    ],
                  ))),
        ]),
      /*
      bottomNavigationBar: TabBar(tabs:
     [
        Text("Home"),
        Text("Claims"),
        Text("Policies"),
        Text("Bills"),
      ],)

       */
    );
  }
}
