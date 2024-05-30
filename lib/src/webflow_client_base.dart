import 'package:webflow_client/src/assets_api.dart';
import 'package:webflow_client/src/cms_api.dart';
import 'package:webflow_client/src/http_client.dart';
import 'package:webflow_client/src/pages_api.dart';
import 'package:webflow_client/src/sites_api.dart';

class WebflowClient {
  late Client _client;
  final Map<String, dynamic> _registry = {};

  WebflowClient(String siteToken) {
    final baseUrl = 'https://api.webflow.com/v2';
    final headers = {'Authorization': 'Bearer $siteToken'};

    _client = Client(baseUrl, headers);

    _registry['sites'] = SitesApi(_client);
    _registry['pages'] = PagesApi(_client);
    _registry['assets'] = AssetsApi(_client);
    _registry['cms'] = CMSApi(_client);
  }

  SitesApi get sites => _registry['sites'];
  PagesApi get pages => _registry['pages'];
  AssetsApi get assets => _registry['assets'];
  CMSApi get cms => _registry['cms'];
}
