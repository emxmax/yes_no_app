import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      await herReply();
    }
    notifyListeners();
  }

  Future<void> herReply() async {
    final respuestas = ['Yes', 'No'];
    final random = Random();

    final seleccion = respuestas[random.nextInt(respuestas.length)];

    final herMessage = Message(text: seleccion, fromWho: FromWho.hers);
    messageList.add(herMessage);
    notifyListeners();
  }
}
