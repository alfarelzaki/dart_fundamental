import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date picker",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            selectedDate.toString(),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24),
          Center(
            child: OutlinedButton(
              child: Text("Date picker"),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),

                    // initialDatePickerMode: DatePickerMode.year,
                    // initialEntryMode: DatePickerEntryMode.input,

                    selectableDayPredicate: (day) {
                      if (day.isAfter(
                              DateTime.now().subtract(Duration(days: 2))) &&
                          day.isBefore(DateTime.now().add(Duration(days: 2)))) {
                        return true;
                      }
                      return false;
                    },
                    helpText: "Help text",
                    confirmText: "Confirm text",
                    cancelText: "Cancel text",
                    fieldHintText: "Field hint text",
                    fieldLabelText: "Field label text",
                    builder: (context, child) {
                      return Theme(data: ThemeData.dark(), child: child!);
                    }).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
