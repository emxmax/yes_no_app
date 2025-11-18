import 'package:flutter/material.dart';

class HerMessage extends StatelessWidget {
  const HerMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola como estas',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 5),
        _ImageMessage(),
        SizedBox(height: 10),
      ],
    );
  }
}

class _ImageMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://yesno.wtf/assets/no/26-34b31d1f0777f70c61488f67a36576a9.gif'
    );
  }
}
