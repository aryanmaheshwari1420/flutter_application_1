// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTableDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              "Room mates",
              style: TextStyle(fontSize: 24, color: Colors.amber),
            ),
         DataTable(
                columns: [
                  DataColumn(label: Text("Roll no ")),
                  DataColumn(label: Text("Roll no")),
                  DataColumn(label: Text("Roll no"))
                  ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("101")),
                    DataCell(Text("aryan")),
                    DataCell(Text("maheshwari")),
                  ]),
                   DataRow(cells: [
                    DataCell(Text("102")),
                    DataCell(Text("abhay")),
                    DataCell(Text("maheshwari")),
                  ]),
                   DataRow(cells: [
                    DataCell(Text("103")),
                    DataCell(Text("nimsisha")),
                    DataCell(Text("maheshwari")),
                  ]),
                ])
          ],
        ),
      ),
    );
  }
}
