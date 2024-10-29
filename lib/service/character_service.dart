import 'dart:convert';
import 'package:got_api_app/core/constants/api.dart';
import 'package:got_api_app/features/main_screen/model/character_model.dart';
import 'package:http/http.dart' as http;


class CharacterService {
  Future<List<CharacterModel>> getCharacters() async{
    final response = await http.get(Uri.parse(ApiEndPoints.baseUrl));
    if(response.statusCode == 200){
      final List<dynamic> characterJson= json.decode(response.body);
      return characterJson.map((json) =>CharacterModel.fromJson(json)).toList();
    }else {
      throw Exception('Failed to load Characters');
    }
}

}