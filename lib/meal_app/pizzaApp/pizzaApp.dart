import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class pizzaApp extends StatefulWidget {
  const pizzaApp({Key? key}) : super(key: key);

  @override
  State<pizzaApp> createState() => _pizzaAppState();
}

class _pizzaAppState extends State<pizzaApp> {
  var _initial_value = 0.0;
  bool _isPaid = false;
  bool _cod = false;
  DateTime today = DateTime.now();
  TimeOfDay todaytime = TimeOfDay.now();
  String pizzaTopping = '';
  String pizzaSize = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pizza App")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text(
              "Select your Topping",
              style: TextStyle(fontSize: 24),
            ),
            CheckboxGroup(
              labels: [
                "Onion",
                "black olive",
                "paper corn",
                "only corn",
              ],
              onSelected: (List<String> selected) {
                setState(() {
                  pizzaTopping = selected.toString();
                });
              },
            ),
            Text(
              "Select Pizza Topping",
              style: TextStyle(fontSize: 24),
            ),
            RadioButtonGroup(
              labels: [
                "Small",
                "Medium",
                "Large",
              ],
              onSelected: (String selected) {
                // print("selected");
                setState(() {
                  pizzaSize = selected;
                });
              },
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text(
                  "Number of pizza",
                  style: TextStyle(fontSize: 24),
                ),
                Slider(
                  value: _initial_value,
                  onChanged: (newQty) {
                    setState(() {
                      _initial_value = newQty;
                    });
                    print("Pizzas Quantity:$_initial_value");
                  },
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: '$_initial_value',
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text(
                  "Payment Status",
                  style: TextStyle(fontSize: 24),
                ),
                Switch(
                    value: _isPaid,
                    onChanged: (bool status) {
                      setState(() {
                        _isPaid = status;
                      });
                    }),
                Text(_isPaid ? " Yes " : " No ", style: TextStyle(fontSize: 24))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Go For COD",
                    style: TextStyle(fontSize: 24),
                  ),
                  Checkbox(
                      value: _cod,
                      onChanged: (b) {
                        setState(() {
                          _cod = b!;
                        });
                      }),
                  Text(
                    _isPaid ? "COD" : "Online",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Select Delivery Date",
                    style: TextStyle(fontSize: 24),
                  ),
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: Icon(Icons.date_range)),
                  Text('${today.day}-${today.month}-${today.year}'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Select Delivery time",
                    style: TextStyle(fontSize: 24),
                  ),
                  IconButton(
                      onPressed: () {
                        selectTime(context);
                      },
                      icon: Icon(Icons.access_time)),
                  Text(
                    '${todaytime.hour}:${todaytime.minute}',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showPreview(context);
                },
                child: Text("Preview order"))
          ],
        ),
      ),
    );
  }

  void selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (pickedDate != null && pickedDate != today) {
      setState(() {
        today = pickedDate;
      });
    }
  }

  void selectTime(BuildContext context) async {
    TimeOfDay? pickedtime =
        await showTimePicker(context: context, initialTime: todaytime);

    setState(() {
      todaytime = pickedtime!;
    });
  }

  void showPreview(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Pizza order status"),
      content: Text(
          "Topping :$pizzaTopping \n\n Pizza Size: $pizzaSize \n\n Pizza Quantity: $_initial_value"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Pay")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Change order"))
            ],
          ),
        )
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}


