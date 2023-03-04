import 'dart:convert';
import 'package:chatgpt/domain/I_api_service.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IApiService)
class ApiService implements IApiService {
//* base url for text
  static String baseUrlText = "https://api.openai.com/v1/completions";

//* base url for image
  static String baseUrlImage = "https://api.openai.com/v1/images/generations";

//* header of the json
  static Map<String, String> header = {
    'Content-Type': 'application/json',
    'Authorization':
        "Bearer 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",
  };

  @override
  Future sendMessage(String? message) async {
    var res = await http.post(
      Uri.parse(baseUrlText),
      headers: header,
      body: jsonEncode({
        "model": "text-davinci-003",
        "prompt": "$message",
        "temperature": 0,
        "max_tokens": 100,
        "top_p": 1,
        "frequency_penalty": 0.0,
        "presence_penalty": 0.0,
        "stop": ["Human:", "AI:"]
      }),
    );

    if (res.statusCode == 200) {
      var data = jsonDecode(res.body.toString());
      var msg = data['choices'][0]['text'];
      return msg;
    } else {
      print('failed to fetch data');
    }
  }

  @override
  Future generateImg(String question) async {
    var res = await http.post(
      Uri.parse(baseUrlImage),
      headers: header,
      body: jsonEncode(
        {
          "prompt": question,
          "n": 1,
          "size": "256x256",
        },
      ),
    );

    if (res.statusCode == 200) {
      var data = jsonDecode(res.body.toString());
      var img = data['data'][0]['url'].toString();
      print(img);
      return img;
    } else {
      print('failed to fetch data');
    }
  }
}
