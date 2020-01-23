import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobxx/core/view_model/counter_vm.dart';
import 'package:provider/provider.dart';
class CounterExample extends StatelessWidget {
  const CounterExample();
  
  @override
  Widget build(BuildContext context) {
    // final CounterVm counter = CounterVm();
    final counter = Provider.of<CounterVm>(context);
    return Scaffold(
    
        appBar: AppBar(
          title: const Text('MobX Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Observer(
                  builder: (_) => Text(
                        '${counter.value}',
                        style: const TextStyle(fontSize: 20),
                      )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counter.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
}
}