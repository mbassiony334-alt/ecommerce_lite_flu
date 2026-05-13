import 'package:bloc/bloc.dart';
import 'package:emcommercelite/feature/home/data/model/productModel.dart';
import 'package:emcommercelite/feature/home/data/repo/productRepo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future<void> getAllproduct() async {
    emit(ProductLoading());
    try {
      var response = await ProductRepo.getAllProduct();
      emit(ProductSuccess(products: response));
    } catch (e) {
      emit(Productfailure());
    }
  }

  Future<void> filterproduct(String category) async {
    emit(FilterLoading());
    try {
      var response = await ProductRepo.filterBycategory(category);
      emit(FilterSuccess(products: response));
    } catch (e) {
      emit(Filterfailure());
    }
  }
}
