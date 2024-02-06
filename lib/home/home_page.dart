import 'package:fin_infocom/di/i_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../app/arch/bloc_provider.dart';
import '../common/load_container/load_container.dart';
import '../di/app_injector.dart';
import '../model/login/employee_information.dart';
import 'home_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  final String apiUrl = 'http://stagingapi.sudlife.outwork.in:8500/mobile/v2/lead';
  final String userId = 'd595995e5945a3996b8b71f144fea742';
  HomeBloc? bloc;
  @override
  void initState() {
    super.initState();
    bloc=BlocProvider.of(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fin InfoCom',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: LoaderContainer(
        stream: bloc!.isLoading,
        child: Container(
          margin: EdgeInsets.only(top: 50,left: 20,right: 20),alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text("Dog Images",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

          StreamBuilder<DogImages>(
            initialData: null,
            stream: bloc!.selectImg,
            builder: (context, snapshot) {
              return ClipRect(

                child: Image.network(
                  '${snapshot.data!.message}',
                  height: 200,
                  width: 200,
                ),
              );
            }
          ),
            ElevatedButton(onPressed: (){
              bloc!.setListeners();
            }, child: Text("Refresh")),
          SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Get.to(AppInjector.instance.adminPage);

              }, child: Text('User Details'))
            ],
          ),
        ),
      ),
    );
  }
}
