import 'package:webflow_client/src/http_client.dart';
import 'package:webflow_client/src/models/asset.dart';

class AssetsApi {
  late final Client _client;

  AssetsApi(Client client) {
    _client = client;
  }

  Future<List<Asset>> listAssets(String siteId) async {
    final response = await _client.get('sites/$siteId/assets');
    return (response['assets'] as List).map((a) => Asset.fromJson(a)).toList();
  }

  Future<Asset> getAsset(String assetId) async {
    final response = await _client.get('assets/$assetId');
    return Asset.fromJson(response);
  }
}
