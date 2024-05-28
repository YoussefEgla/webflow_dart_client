import 'package:webflow_client/src/http_client.dart';
import 'package:webflow_client/src/models/custom_domain.dart';
import 'package:webflow_client/src/models/site.dart';

class SitesApi {
  late final Client _client;

  SitesApi(Client client) {
    _client = client;
  }

  Future<List<Site>> listSites() async {
    final response = await _client.get('sites');
    return (response['sites'] as List)
        .map((site) => Site.fromJson(site))
        .toList();
  }

  Future<Site> getSite(String siteId) async {
    final response = await _client.get('sites/$siteId');
    return Site.fromJson(response);
  }

  /// Get a list of all custom domains related to a site.
  Future<List<CustomDomain>> getCustomDomains(String siteId) async {
    final response = await _client.get('sites/$siteId/custom-domains');
    return (response['customDomains'] as List)
        .map((domain) => CustomDomain.fromJson(domain))
        .toList();
  }
}
