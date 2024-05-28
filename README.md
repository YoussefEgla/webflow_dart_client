<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Webflow Dart Client Library

A Dart client library for [Webflow](https://webflow.com/).

## Usage

```dart
import 'package:webflow_client/webflow_client.dart';

void main() async {
  final client = WebflowClient('SITE_TOKEN');
    final sites = await client.sites.listSites();
    print(sites);
}
```

Currently support read-only operations:

- Sites
  - List Sites
  - Get Site
  - List Custom Domains
- Pages
  - List Pages
  - Get Page Metadata
  - Get Page Content
- Assets
  - List Assets
  - Get Asset
- Collections
  - List Collections
  - Get Collection
  - List Collection Items (all/live)
  - Get Collection Item (all/live)
