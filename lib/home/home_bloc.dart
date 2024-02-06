import 'package:rxdart/rxdart.dart';
import '../app/arch/bloc_provider.dart';
import '../model/login/employee_information.dart';
import '../repositories/home/home_api.dart';

typedef BlocProvider<HomeBloc> HomeFactory();
class HomeBloc extends BlocBase {
  BehaviorSubject<bool> _isLoading =BehaviorSubject.seeded(false);
  BehaviorSubject<List<dynamic>> _selectEmp = BehaviorSubject.seeded([]);
    BehaviorSubject<DogImages> _selectImg = BehaviorSubject();
  Stream<List<dynamic>> get selectEmp => _selectEmp;
  Sink<List<dynamic>> get addSelectEmp => _selectEmp;
  Stream<DogImages> get selectImg => _selectImg;
  Stream<bool> get isLoading=> _isLoading;

    HomeBloc(){
      setListeners();
    }

  void setListeners() {
    _isLoading.add(true);
    HomeService().getUserLevelList().then((value){
      _isLoading.add(false);
      if(value.error==null){
        _selectImg.add(value.data!);
        print('Images Name ${value.data!.message}');
      }
    });

  }
}