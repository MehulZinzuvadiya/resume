import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Surat";
  bool lan1 = true;
  bool lan2 = false;
  bool lan3 = false;
  bool lan4 = false;
  String gen = "Male";
  RangeValues rangev1 = RangeValues(100, 500);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text(
          "My Resume",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(Icons.person),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("Group")),
              PopupMenuItem(child: Text("Name")),
              PopupMenuItem(child: Text("Settings")),
            ];
          }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Your City",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            DropdownButton(
              iconSize: 30,
              isExpanded: true,
              items: [
                DropdownMenuItem(
                  child: Text("Surat"),
                  value: "Surat",
                ),
                DropdownMenuItem(
                  child: Text("Vapi"),
                  value: "Vapi",
                ),
                DropdownMenuItem(
                  child: Text("Baroda"),
                  value: "Baroda",
                ),
              ],
              onChanged: (value) {
                setState(() {
                  data = value!;
                });
              },
              value: data,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select Languages",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Checkbox(
                    value: lan1,
                    onChanged: (value) {
                      setState(() {
                        lan1 = value!;
                      });
                    }),
                Text("Gujarati")
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: lan2,
                    onChanged: (value) {
                      setState(() {
                        lan2 = value!;
                      });
                    }),
                Text("Hindi")
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: lan3,
                    onChanged: (value) {
                      setState(() {
                        lan3 = value!;
                      });
                    }),
                Text("English")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //Instead of Row we can use this widget
            CheckboxListTile(
                value: lan4,
                title: Text("Urdu"),
                onChanged: (value) {
                  setState(() {
                    lan4 = value!;
                  });
                }),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text("1"),
              title: Text("Mehul"),
              subtitle: Text("Zinzuvadiya"),
              trailing: Text("Flutter dev."),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gender",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Radio(
                    value: "Male",
                    groupValue: gen,
                    onChanged: (value) {
                      setState(() {
                        gen = value!;
                      });
                    }),
                Text("Male"),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Female",
                    groupValue: gen,
                    onChanged: (value) {
                      setState(() {
                        gen = value!;
                      });
                    }),
                Text("Female"),
              ],
            ),
            RadioListTile(
              value: "Other",
              groupValue: gen,
              onChanged: (value) {
                setState(() {
                  gen = value!;
                });
              },
              title: Text("Other"),
            ),
            SizedBox(
              height: 10,
            ),
            Text("${rangev1.start.toInt()}/${rangev1.end.toInt()}"),
            RangeSlider(
                values: rangev1,
                max: 1000,
                divisions: 10,
                labels: RangeLabels(
                  rangev1.start.round().toString(),
                  rangev1.end.round().toString(),
                ),
                onChanged: (value) {
                  setState(() {
                    rangev1 = value!;
                  });
                })
          ],
        ),
      ),
    ));
  }
}
