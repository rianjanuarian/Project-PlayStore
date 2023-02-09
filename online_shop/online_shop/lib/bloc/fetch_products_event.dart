part of 'fetch_products_bloc.dart';

@immutable
abstract class FetchProductsEvent {}

class GetProductsEvent extends FetchProductsEvent {}
