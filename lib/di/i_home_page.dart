
import '../app/arch/bloc_provider.dart';
import '../home/admin_details_bloc.dart';
import '../home/admin_details_page.dart';
import '../home/home_bloc.dart';
import '../home/home_page.dart';
import 'app_injector.dart';

extension HomeExtension on AppInjector {
  HomeFactory get  homePage => container.get();
  UserDetailsFactory get  adminPage => container.get();

  registerLogin(){
    container.registerDependency<HomeFactory>((){
      return()=> BlocProvider<HomeBloc>(bloc: HomeBloc(), child:  HomePage());
    });
    container.registerDependency<UserDetailsFactory>((){
      return()=> BlocProvider<UserDetailsBloc>(bloc: UserDetailsBloc(), child:  UserDetails());
    });
  }

}