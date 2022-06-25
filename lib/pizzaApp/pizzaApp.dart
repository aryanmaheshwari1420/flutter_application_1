
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pizza App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                print(selected);
              },
            ),
            Text(
              "Select Pizza Topping",
              style: TextStyle(fontSize: 24),
            ),
            RadioButtonGroup(
              labels: [
                "Small"
                    "Medium"
                    "Large"
              ],
              onSelected: (String selected) {
                print("selected");
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Payment Status",
                    style: TextStyle(fontSize: 24),
                  ),
                  Switch(
                      value: _isPaid,
                      onChanged: (bool status) {
                        setState(() {
                          _isPaid = !status;
                        });
                      }),
                  Text(_isPaid ? " Yes " : " No ", style: TextStyle(fontSize: 24))
                ],
              ),
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
            )
          ],
        ),
      ),
    );
  }
}
