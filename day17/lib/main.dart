import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: home(),
      )));
}

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homepage();
  }
}

String dropdownValue = 'Ahmedabad';

class homepage extends State<home> {
  DateTime date = DateTime(2023, 12, 13);
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            title: Text("Flutter Form"),
            elevation: 10,
            backgroundColor: Colors.blueGrey),
        body: ListView(children: [
          Column(children: [
            Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey.shade300,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Enter Your Name Here",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelStyle: TextStyle(color: Colors.black)),
                        cursorColor: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter Your Email Here",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelStyle: TextStyle(color: Colors.black)),
                        cursorColor: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          //hintText: Text('$date.year/$date.month/$date.day'),
                            icon:
                            Icon(Icons.calendar_today), //icon of text field
                            labelText: '$date',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelStyle: TextStyle(color: Colors.black)),
                        onTap: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1990),
                              lastDate: DateTime(2080));
                          if (newDate != null) {
                            print(
                                newDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                            DateFormat('yyyy-MM-dd').format(newDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Your Password Here",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        minLines: 6,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Address",
                            hintText: "Enter Your Address Here",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelStyle: TextStyle(color: Colors.black),
                            hintStyle: TextStyle(color: Colors.blue)),
                        cursorColor: Colors.blueGrey,
                      ),
                      Column(
                        children: [
                          RadioListTile(
                              title: Text("Male"),
                              value: "Male",
                              groupValue: "Male",
                              onChanged: null),
                          RadioListTile(
                              title: Text("female"),
                              value: "Male",
                              groupValue: "female",
                              onChanged: null),
                        ],
                      ),
                      DropdownButton<String>(
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>[
                          'Jamnagar',
                          'Junagadh',
                          'Kheda',
                          'Ahmedabad',
                          'Amreli',
                          'Banaskantha',
                          'Bharuch',
                          'Bhavnagar',
                          'Dang',
                          'Kachchh',
                          'Mehsana',
                          'Panchmahal',
                          'Rajkot',
                          'Sabarkantha',
                          'Vadodara',
                          'Surat',
                          'Surendranagar'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 10),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ))
          ])
        ]));
  }
}
