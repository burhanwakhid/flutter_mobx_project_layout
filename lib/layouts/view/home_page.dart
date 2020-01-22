import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobxx/core/view_model/counter_vm.dart';
import 'package:flutter_mobxx/core/view_model/kategori_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterVm counterVm = CounterVm();

  final KategoriStore kategoriStore = KategoriStore();

  @override
  void initState() {
    kategoriStore.getKategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MobX Counter'),
        ),
        body: SafeArea(
                  child: Observer(
            builder: (_) {
              switch(kategoriStore.state){
                case StoreState.initial:
                  return Center(child: CircularProgressIndicator(),);
                case StoreState.loading:
                  return Center(child: CircularProgressIndicator(),);
                case StoreState.loaded:
                  return _buildListView(context, kategoriStore.kategoriModel); 
                
              }
              
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counterVm.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.ac_unit),
        ),
      );
  }

  ListView _buildListView(context, model) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) =>
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(model[index].mainKategori, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey[700]),),
                  ),
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,mainAxisSpacing: 25.0
                      ),
                      itemCount: model[index].subKategori.length,
                      itemBuilder: (BuildContext context, int i) =>
                      Material(
                        color: Colors.white.withOpacity(0.0),
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          onTap: () {
                            //  Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (BuildContext context) => ListProdukPage(
                            //       kodeProduk: model.listKategori[index].subKategori[i].id,
                            //     )
                            //   ));
                          },
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Center(
                                      child: Column(children: <Widget>[
                                        Icon(Icons.play_circle_outline, size: 36,),
                                        
                                      ],)
                                    ),
                                  ),
                                ),
                              ),
                              Text(model[index].subKategori[i].nama,overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemCount: model.length
  );
  }
}