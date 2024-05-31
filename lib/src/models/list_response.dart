import 'pagination.dart';

class ListResponse<T> {
  final List<T> items;
  final Pagination pagination;

  ListResponse({
    required this.items,
    required this.pagination,
  });

  factory ListResponse.fromJson(
    Map<String, dynamic> json,
    String itemsKey,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return ListResponse<T>(
      items: (json[itemsKey] as List<dynamic>)
          .map((item) => fromJsonT(item as Map<String, dynamic>))
          .toList(),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );
  }

  @override
  String toString() => 'items: $items, pagination: $pagination';
}
