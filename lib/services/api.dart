import 'package:http/http.dart' as http;
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter/foundation.dart' show kDebugMode; 

class ApiService {
  final String apiKey = 'AIzaSyCbdOveIYvedl6vnDtihLJcrf-c_CHOfYg';

  late final GenerativeModel _model;

  ApiService() {
    _model = GenerativeModel(
      model: 'gemini-1.5-flash',
      apiKey: apiKey,
      httpClient: http.Client(),
    );
  }

  Future<String> sendMessage(String prompt) async {
    try {
      final String promptEmPortugues =
          "Responda em português do Brasil: $prompt";

      final response = await _model.generateContent([
        Content.text(promptEmPortugues), 
      ]);

      return response.text ?? '⚠️ Resposta vazia.';
    } catch (e) {
      if (kDebugMode) {
        print('❌ Erro ao chamar Gemini: $e');
      }
      return '❌ Erro ao chamar Gemini: $e';
    }
  }
}
