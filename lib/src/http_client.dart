import 'dart:convert';
import 'package:http/http.dart' as http;

class Client {
  final Map<String, String> _headers = {'Content-Type': 'application/json'};
  final http.Client httpClient = http.Client();
  late String _baseUrl;

  Client(String baseUri, Map<String, String>? headers) {
    if (Uri.tryParse(baseUri) == null) {
      throw ArgumentError.value(baseUri, 'baseUri', 'Invalid URL');
    }

    _baseUrl = baseUri;
    if (headers != null) _headers.addAll(headers);
  }

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? query,
  }) async {
    final url = Uri.parse('$_baseUrl/$path').replace(queryParameters: query);
    final response = await httpClient.get(url, headers: _headers);
    return _parseResponse(response);
  }

  Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final response =
        await http.post(url, headers: _headers, body: jsonEncode(data));
    return _parseResponse(response);
  }

  Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final response =
        await http.put(url, headers: _headers, body: jsonEncode(data));
    return _parseResponse(response);
  }

  Future<Map<String, dynamic>> delete(String endpoint) async {
    final url = Uri.parse('$_baseUrl$endpoint');
    final response = await httpClient.delete(url, headers: _headers);
    return _parseResponse(response);
  }

  Map<String, dynamic> _parseResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw http.ClientException(
      'Error: ${response.statusCode} - ${response.reasonPhrase}',
      response.request!.url,
    );
  }

  void close() {
    httpClient.close();
  }
}
