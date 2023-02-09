part of 'fetch_products_bloc.dart';

@immutable
abstract class FetchProductsState {}

class FetchProductsInitial extends FetchProductsState {}

class FetchProducts extends FetchProductsState {}

class FetchLoading extends FetchProductsState {}
