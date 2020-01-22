import 'package:flutter_mobxx/core/model/kategori_model.dart';
import 'package:flutter_mobxx/core/service/api_service.dart';
import 'package:mobx/mobx.dart';
part 'kategori_store.g.dart';

class KategoriStore = _KategoriStoreBase with _$KategoriStore;
enum StoreState { initial, loading, loaded }
abstract class _KategoriStoreBase with Store {
  ApiService _apiService = ApiService();
  
  @observable
  String errorMessage;

  @observable
  ObservableFuture<List<KategoriModel>> _kategoriFuture;

  @observable
  List<KategoriModel> kategoriModel;
  
  @computed
  StoreState get state {
    if (_kategoriFuture == null ||
        _kategoriFuture.status == FutureStatus.rejected) {
      return StoreState.initial;
    }
    return _kategoriFuture.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future getKategory() async{
    try{
      errorMessage = null;
      _kategoriFuture = ObservableFuture(_apiService.getKategori());
      kategoriModel = await _kategoriFuture;
      print(kategoriModel.length);
    } catch (e){
      errorMessage = "error cuk";
    }
    
  }
  
}