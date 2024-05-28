import 'package:webflow_client/src/assets_api.dart';
import 'package:webflow_client/src/cms_api.dart';
import 'package:webflow_client/src/http_client.dart';
import 'package:webflow_client/src/pages_api.dart';
import 'package:webflow_client/src/sites_api.dart';

class WebflowClient {
  late Client _client;
  final _registry = <String, dynamic>{
    'sites': SitesApi,
    'pages': PagesApi,
    'assets': AssetsApi,
    'cms': CMSApi,
  };

  WebflowClient(String siteToken) {
    final baseUrl = 'https://api.webflow.com/v2';
    final headers = {'Authorization': 'Bearer $siteToken'};

    _client = Client(baseUrl, headers);

    for (final key in _registry.keys) {
      _registry[key] = _registry[key](_client);
    }
  }

  SitesApi get sites => _registry['sites'];
  PagesApi get pages => _registry['pages'];
  AssetsApi get assets => _registry['assets'];
  CMSApi get cms => _registry['cms'];
}
