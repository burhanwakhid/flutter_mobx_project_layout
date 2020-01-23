import 'package:flutter/material.dart';
import 'package:flutter_mobxx/config/router.dart';
import 'package:flutter_mobxx/core/view_model/counter_vm.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CounterVm>(create: (_) => CounterVm(),),
        // Provider<MultiCounterStore>(builder: (_) => MultiCounterStore())
      ],
      child: MaterialApp(
        title: 'Fintech Pos',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlue,
          accentColor: Colors.lightBlueAccent
        ),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
