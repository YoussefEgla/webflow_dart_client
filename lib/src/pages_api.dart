import 'package:webflow_client/src/http_client.dart';
import 'package:webflow_client/src/models/list_response.dart';
import 'package:webflow_client/src/models/node.dart';
import 'package:webflow_client/src/models/page.dart';

class PagesApi {
  late final Client _client;

  PagesApi(Client client) {
    _client = client;
  }

  Future<ListResponse<Page>> listPages(
    String siteId, {
    String? locale,
    int? limit,
    int? offset,
  }) async {
    final query = <String, dynamic>{};
    if (locale != null) query['locale'] = locale;
    if (limit != null) query['limit'] = limit;
    if (offset != null) query['offset'] = offset;

    final response = await _client.get('sites/$siteId/pages', query: query);

    return ListResponse.fromJson(response, 'pages', Page.fromJson);
  }

  Future<Page> getPageMetadata(String pageId, {String? locale}) async {
    final query = <String, dynamic>{};
    if (locale != null) query['locale'] = locale;

    final response = await _client.get('pages/$pageId', query: query);

    return Page.fromJson(response);
  }

  Future<ListResponse<Node>> getPageContent(
    String pageId, {
    String? locale,
  }) async {
    final query = <String, dynamic>{};
    if (locale != null) query['locale'] = locale;

    final response = await _client.get('pages/$pageId/dom');
    return ListResponse.fromJson(response, 'nodes', Node.fromJson);
  }
}
