import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mvvm_test/main.dart';

enum SendType { GET, POST }

class ApiService {
  final _client = http.Client();

  Future<http.Response?> getData(String url, SendType sendType,
      [Map<String, dynamic>? body]) async {
    Map<String, dynamic> params = {'api_key': nasaApiKey};
    Uri generatedUrl = Uri.https('api.nasa.gov', url, params);
    logger.i(
        'making request:\n time: ${DateTime.now()}\n method: $sendType\n url: $generatedUrl');
    try {
      switch (sendType) {
        case SendType.GET:
          return await _client.get(generatedUrl);
        case SendType.POST:
          return await _client.post(generatedUrl, body: body);
        default:
          return await _client.get(generatedUrl);
      }
    } catch (e) {
      logger.e(
          'time: ${DateTime.now()}\n method: $sendType\n url: $generatedUrl',
          e);
      return null;
    } finally {
      _client.close();
    }
  }
}
