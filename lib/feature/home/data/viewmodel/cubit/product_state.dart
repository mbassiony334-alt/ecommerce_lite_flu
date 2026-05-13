part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<productModel> products;

  ProductSuccess({required this.products});
}

final class Productfailure extends ProductState {}

final class Filterfailure extends ProductState {}

final class FilterSuccess extends ProductState {
  final List<productModel> products;

  FilterSuccess({required this.products});
}

final class FilterLoading extends ProductState {}
