// characters_container.dart
import 'package:flutter/material.dart';

class CharactersContainer extends StatelessWidget {
  final String imgPath;
  final String characterName;
  final String characterDescription;

  const CharactersContainer({
    required this.imgPath,
    required this.characterName,
    required this.characterDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(imgPath)
            ,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  characterName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(characterDescription),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
