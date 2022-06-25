import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class pizzaApp extends StatefulWidget {
  const pizzaApp({Key? key}) : super(key: key);

  @override
  State<pizzaApp> createState() => _pizzaAppState();
}

class _pizzaAppState extends State<pizzaApp> {
  var _initial_value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pizza App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                    },
                    min: 0,
                    max: 100,
                    divisions: 50,
                    )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
