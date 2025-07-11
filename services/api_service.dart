import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_model.dart';

class ApiService {
  //api요청을 보낼 클래스
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  static Future<List<WebtoonModel>>
  getTodaysToons() async /*이거 쓰면 future을 반환해야 하고 마지막에 어떤 것을 반환하는지도 꼭 적어줘야 한다.  */ {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse(
      '$baseUrl/$today',
    ); //api요청. 한 프로그램에서 다른 프로그램을 사용하기 위해 허가요청
    final response = await http.get(url); /*async 비동기 함수에서만 쓸 수 있다. */
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(
        response.body,
      ); //body는 데이터를 반환한다는 의미.
      for (var w in webtoons) {
        final instance = WebtoonModel.fromJson(w);
        webtoonInstances.add(instance);
      }
      print(webtoonInstances);
      return webtoonInstances;
    }
    throw Error();
  }
}
