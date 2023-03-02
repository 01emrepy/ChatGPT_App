import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'completion_response_model.dart';

var headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer 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'
};
Uri url = Uri.parse('https://api.openai.com/v1/completions');

Future<OpenAICompletionsResponse?> getAnswer(String question) async {
  Response request = await post(url,
      headers: headers,
      body: jsonEncode({
        "model": "text-davinci-003",
        "prompt": question,
        "max_tokens": 300,
      }));

  OpenAICompletionsResponse? res =
      await compute(OpenAICompletionsResponse.parseInfo, request.body);
  return res;
}
