import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        hintText: "End your message with a '?'",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            print('Submit value $textValue');
            textController.clear();
          },
          icon: Icon(Icons.send_outlined),
        ),
      ),
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textController.clear();
      }
    );
  }
}
