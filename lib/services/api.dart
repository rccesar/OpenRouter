import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<String> sendMessage(String prompt) async {
    final apiKey =
        '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';

    try {
      final response = await _dio.post(
        'https://openrouter.ai/v1/chat/completions', 
        options: Options(
          headers: {
            'Authorization': 'Bearer $apiKey',
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "model": "openai/gpt-4o-mini",
          "messages": [
            {"role": "user", "content": prompt},
          ],
          "temperature": 0.7,
          "max_tokens": 1024,
        },
      );

      return response.data['choices'][0]['message']['content'] as String;
    } catch (e) {
      throw Exception('Erro ao chamar a API: $e');
    }
  }
}
