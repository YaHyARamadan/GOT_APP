import 'package:flutter/material.dart';
import 'package:got_api_app/features/main_screen/model/character_model.dart';
import 'package:got_api_app/features/main_screen/view/widgets/character_container.dart';
import 'package:got_api_app/features/main_screen/view_model/api_provider.dart';
import 'package:provider/provider.dart';

import '../../../service/character_service.dart';

class MainScreen extends StatelessWidget {
  final CharacterService characterService = CharacterService();


  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Game of Thrones Characters")),
      body: FutureBuilder<List<CharacterModel>>(
        future: characterService.getCharacters(),
        builder: (context, snapshot) {
            final characters = snapshot.data!;
            final itemCount = characters.length < 20 ? characters.length : 20;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.7,
              ),
              itemCount:itemCount,
              itemBuilder: (context, index) {
                final character = characters[index];
                return CharactersContainer(
                  imgPath: provider.img[index],
                  characterName: character.fullName,
                  characterDescription: character.title,
                );
              },
            );

        },
      ),
    );
  }
}
