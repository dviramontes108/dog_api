import 'package:doc_ceo_api/model/dog.dart';
import 'package:doc_ceo_api/model/resp.dart';
import 'package:doc_ceo_api/repository/dogs_resp_exceptions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DogsRepository {
  DogsUrlList dogsUrlList = DogsUrlList();
  Future<List<Dog>> getAllDogs() async {
    List<Dog> dogs = [];
    var response = await http.get(Uri.parse(dogsUrlList.getAllDogs));
    Resp resp = _getResp(response);
    try {
      for (var element in resp.message.keys) {
        List<String> tempbreeds =
            (resp.message[element] as List).map((e) => e.toString()).toList();
        Dog tempdoggie = Dog(name: element, breeds: tempbreeds);
        dogs.add(tempdoggie);
      }
      return dogs;
    } catch (e) {
      throw ParseFailure(message: "Parse Error", error: e);
    }
  }

  Future<Dog> getDogDetail({required Dog dog}) async {
    var response =
        await http.get(Uri.parse(dogsUrlList.getDogDetail(dog.name)));
    Resp resp = _getResp(response);
    String image = resp.message;
    return dog.copyWith(image: image);
  }

  Resp _getResp(http.Response response) {
    Resp resp =
        (Resp.fromJson(json.decode(response.body) as Map<String, dynamic>));
    if (resp.status != 'success') throw ErrorRespFailure(message: resp.message);
    return resp;
  }
}

class DogsUrlList {
  static const baseUrl = "https://dog.ceo/api";
  final String getAllDogs = "$baseUrl/breeds/list/all";
  String getDogDetail(String name) => "$baseUrl/breed/$name/images/random";
}
