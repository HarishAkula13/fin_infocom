import 'package:rxdart/rxdart.dart';
import '../app/arch/bloc_provider.dart';
import '../model/login/employee_information.dart';
import '../repositories/home/home_api.dart';

typedef BlocProvider<UserDetailsBloc> UserDetailsFactory();
class UserDetailsBloc extends BlocBase {
  BehaviorSubject<bool> _isLoading =BehaviorSubject.seeded(false);
  BehaviorSubject<List<ProfileDetails>> _selectadmin = BehaviorSubject.seeded([]);
  Stream<List<ProfileDetails>> get selectadmin => _selectadmin;
  Sink<List<ProfileDetails>> get addSelectadmin => _selectadmin;
  Stream<bool> get isLoading=> _isLoading;

  UserDetailsBloc(){
    setListener();

  }

  void setListener() {
    _isLoading.add(true);
    HomeService().getProfileDetails().then((value){
      _isLoading.add(false);
      if(value.error==null){
        _selectadmin.add(value.data!.results!);
      }
    });
  }
}