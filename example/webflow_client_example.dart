import 'package:webflow_client/webflow_client.dart';

void main() {
  var webflowClient = WebflowClient('siteToken');

  // Access the APIs
  var sitesApi = webflowClient.sites;
  var pagesApi = webflowClient.pages;
  var assetsApi = webflowClient.assets;
  var cmsApi = webflowClient.cms;

  // Use the APIs
  sitesApi.listSites().then((site) {
    print(site);
  });

  pagesApi.listPages('siteId').then((pages) {
    print(pages);
  });

  assetsApi.listAssets('siteId').then((assets) {
    print(assets);
  });

  cmsApi.listCollections('siteId').then((collections) {
    print(collections);
  });

  cmsApi.listCollectionItems('collectionId').then((items) {
    print(items);
  });
}
