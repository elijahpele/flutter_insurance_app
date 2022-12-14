import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/claim.dart';
import '../models/umbrella_text.dart';
import '../utils.dart';
import 'id_cards.dart';

class ClaimDetails extends StatefulWidget {
  const ClaimDetails({super.key});

  _ClaimDetailsState createState() => _ClaimDetailsState();
}

class _ClaimDetailsState extends State<ClaimDetails> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> _nameFormFieldKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _addressFormFieldKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _commentsFormFieldKey = GlobalKey();


  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController commentsController = TextEditingController();
  String chosenDate ="";

  _notEmpty(String value) => value != null && value.isNotEmpty;
  Claim claim = Claim();
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
        body:ListView(
        children: <Widget>[
          SizedBox(height:15),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Details about this claim",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[800]),
                      )
                    ],
                  )
              )),
          SizedBox(height:25),
          Form(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Container(
                  width: 360,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.grey),
                    color: Colors.white70,
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    SizedBox(width: 6),
                                    Text(
                                      "2020 Ford Focus SE",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[800]),
                                    )
                                  ],
                                )
                            )),
                        SizedBox(height:20),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            key: _nameFormFieldKey,
                            controller: nameController,
                            decoration: const InputDecoration(
                                labelText: 'Name of the driver'),
                            validator: (value) =>
                            _notEmpty(value!) ? null : 'Drivers name is required',
                          ),
                        ),


              SizedBox(height:25),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  key: _addressFormFieldKey,
                  controller: addressController,
                  decoration: const InputDecoration(
                      labelText: 'Address of Incident'),
                  validator: (value) =>
                  _notEmpty(value!) ? null : 'Location is required',
                ),
              ),
                        SizedBox(height:20),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right:10),
                      child: GestureDetector(
                        onTap: () {
                          selectDate(context);
                        },
                        child: AbsorbPointer(
                          child: TextFormField(
                            onSaved: (val) {
                            },
                            controller: dateController,
                            decoration: InputDecoration(
                              labelText: "Date",
                              suffixIcon: Icon(Icons.calendar_today,
                                  color: Colors.red),
                            ),
                            validator: (value) {
                              _notEmpty(value!) ? null : 'Drivers name is required';
                              return null;
                            },
                          ),
                        ),
                      ),
                  ),

              SizedBox(height:20),
                        SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                  labelText: "Comments",),

                                ),
                              ]),
                            ),
                        ),


                        ElevatedButton(
                          child: Text("Next"),
                          onPressed: () {
                            if (Form.of(context)!.validate()) {
                              _formKey.currentState?.save();
                            }
                          },
                        )

                      ]))))

    ]
    )
    );
  }
  selectDate(
      BuildContext inContext
      ) async {
    DateTime initialDate = DateTime.now();
    DateTime? picked = await showDatePicker(
        context : inContext, initialDate : initialDate,
        firstDate : DateTime(1900), lastDate : DateTime(2100)
    );
   dateController.text = "${picked?.year}-${picked?.month}-${picked?.day}";
  }
}

