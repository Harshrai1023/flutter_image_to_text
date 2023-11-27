import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextScreen extends StatefulWidget {
  final String scannedText;
  const TextScreen(this.scannedText, {super.key});

  @override
  TextScreenState createState() => TextScreenState();
}

class TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recognised Text"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(
                ClipboardData(text: widget.scannedText),
              );
              const snackBar = SnackBar(
                  content: Text(
                'Copied Successfully',
              ));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
      body: Text(widget.scannedText),
    );
  }
}
