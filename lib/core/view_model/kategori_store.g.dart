// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kategori_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KategoriStore on _KategoriStoreBase, Store {
  final _$errorMessageAtom = Atom(name: '_KategoriStoreBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$_kategoriFutureAtom =
      Atom(name: '_KategoriStoreBase._kategoriFuture');

  @override
  ObservableFuture<List<KategoriModel>> get _kategoriFuture {
    _$_kategoriFutureAtom.context.enforceReadPolicy(_$_kategoriFutureAtom);
    _$_kategoriFutureAtom.reportObserved();
    return super._kategoriFuture;
  }

  @override
  set _kategoriFuture(ObservableFuture<List<KategoriModel>> value) {
    _$_kategoriFutureAtom.context.conditionallyRunInAction(() {
      super._kategoriFuture = value;
      _$_kategoriFutureAtom.reportChanged();
    }, _$_kategoriFutureAtom, name: '${_$_kategoriFutureAtom.name}_set');
  }

  final _$kategoriModelAtom = Atom(name: '_KategoriStoreBase.kategoriModel');

  @override
  List<KategoriModel> get kategoriModel {
    _$kategoriModelAtom.context.enforceReadPolicy(_$kategoriModelAtom);
    _$kategoriModelAtom.reportObserved();
    return super.kategoriModel;
  }

  @override
  set kategoriModel(List<KategoriModel> value) {
    _$kategoriModelAtom.context.conditionallyRunInAction(() {
      super.kategoriModel = value;
      _$kategoriModelAtom.reportChanged();
    }, _$kategoriModelAtom, name: '${_$kategoriModelAtom.name}_set');
  }

  final _$getKategoryAsyncAction = AsyncAction('getKategory');

  @override
  Future<dynamic> getKategory() {
    return _$getKategoryAsyncAction.run(() => super.getKategory());
  }
}
