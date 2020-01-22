import 'package:mobx/mobx.dart';
part 'counter_vm.g.dart';

class CounterVm = _CounterVmBase with _$CounterVm;

abstract class _CounterVmBase with Store {
  @observable
  int value = 0;

  @action
  void increment(){
    value++;
  }
}