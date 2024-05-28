import 'package:webflow_client/src/http_client.dart';
import 'package:webflow_client/src/models/cms.dart';
import 'package:webflow_client/src/models/list_response.dart';

class CMSApi {
  late final Client _client;

  CMSApi(Client client) {
    _client = client;
  }

  Future<List<Collection>> listCollections(String siteId) async {
    final response = await _client.get('sites/$siteId/collections');
    return (response['collections'] as List)
        .map((c) => Collection.fromJson(c))
        .toList();
  }

  Future<CollectionDetails> getCollectionDetails(String collectionId) async {
    final response = await _client.get('collections/$collectionId');
    return CollectionDetails.fromJson(response);
  }

  Future<ListResponse<Item>> listCollectionItems(
    String collectionId, {
    bool live = true,
    String? cmsLocaleId,
    int? limit,
    int? offset,
  }) async {
    final query = <String, dynamic>{};
    if (cmsLocaleId != null) query['cmsLocaleId'] = cmsLocaleId;
    if (limit != null) query['limit'] = limit;
    if (offset != null) query['offset'] = offset;

    final response = await _client.get(
        'collections/$collectionId/items${live ? '/live' : ''}',
        query: query);

    return ListResponse.fromJson(response, 'items', (x) => Item.fromJson(x));
  }

  Future<Item> getCollectionItem(
    String collectionId,
    String itemId, {
    bool live = true,
    String? cmsLocaleId,
  }) async {
    final query = <String, dynamic>{};
    if (cmsLocaleId != null) query['cmsLocaleId'] = cmsLocaleId;

    final response = await _client.get(
        'collections/$collectionId/items/$itemId${live ? '/live' : ''}',
        query: query);

    return Item.fromJson(response);
  }
}
