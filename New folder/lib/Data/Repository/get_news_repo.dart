import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_7/Data/Models/get_news_model.dart';

class GetNewsRepo {
  Future<GetNewModel?> getNews() async {
    try {
      var response = await http.get(
        Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2023-08-20&sortBy=publishedAt&apiKey=9edcac9d4f574d52be6a99d59c174fcf"),
      );

      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        GetNewModel myResponse = GetNewModel.fromJson(decodedResponse);

        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
