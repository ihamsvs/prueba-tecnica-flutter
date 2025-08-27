import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipes_app/models/recetas.dart';

class RecipeService {
  final String baseUrl = 'http://localhost:3000/api/recipes';

  Future<List<Receta>> getRecipes() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((item) => Receta.fromJson(item)).toList();
    } else {
      throw Exception("Error al cargar recetas");
    }
  }
}
