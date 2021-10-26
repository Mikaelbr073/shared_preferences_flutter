import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  final List<Map<String, dynamic>> values;
  const NewPage({Key? key, required this.values}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text('Lista de Pessoas'),
      )),
      body: ListView.builder(
        itemCount: widget.values.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text( widget.values[index]['nome']),
            subtitle: Text(widget.values[index]['idade']),
          );
        },
      ),
    );
  }
}
