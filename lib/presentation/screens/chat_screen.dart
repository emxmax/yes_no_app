import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/her_message.dart';
import 'package:yes_no_app/presentation/widgets/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/my_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi novia ❤️'),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/1/16/JenniferAnistonHWoFFeb2012.jpg",
            ),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0) ? MyMessage() : HerMessage();
                },
              ),
            ),
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
