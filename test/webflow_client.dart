import 'package:test/test.dart';
import 'package:webflow_client/src/assets_api.dart';
import 'package:webflow_client/src/cms_api.dart';
import 'package:webflow_client/src/pages_api.dart';
import 'package:webflow_client/src/sites_api.dart';
import 'package:webflow_client/src/webflow_client_base.dart';
import 'package:webflow_client/webflow_client.dart';

void main() {
  group('WebflowClient', () {
    test('initializes Client correctly', () {
      var client = WebflowClient('');
      expect(client, isA<WebflowClient>());
    });

    test('returns SitesApi', () {
      var client = WebflowClient('');
      expect(client.sites, isA<SitesApi>());
    });

    test('returns PagesApi', () {
      var client = WebflowClient('');
      expect(client.pages, isA<PagesApi>());
    });

    test('returns AssetsApi', () {
      var client = WebflowClient('');
      expect(client.assets, isA<AssetsApi>());
    });

    test('returns CMSApi', () {
      var client = WebflowClient('');
      expect(client.cms, isA<CMSApi>());
    });
  });
}
