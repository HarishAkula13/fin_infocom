import 'package:fin_infocom/common/load_container/load_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../app/arch/bloc_provider.dart';
import '../model/login/employee_information.dart';
import 'admin_details_bloc.dart';

class UserDetails extends StatefulWidget {

  @override
  State<UserDetails> createState() => UserDetailsState();
}

class UserDetailsState extends State<UserDetails> {
  UserDetailsBloc? bloc;
  @override
  void initState() {
    super.initState();
    bloc=BlocProvider.of(context);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("User Details",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
   body: LoaderContainer(
     stream: bloc!.isLoading,
     child: Container(
       margin: EdgeInsets.all(20),
       child: Column(
         children: [
           StreamBuilder<List<ProfileDetails>>(
               initialData: [],
               stream: bloc!.selectadmin,
               builder: (context, sn) {
                 return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                     itemCount: sn.data!.length,
                     shrinkWrap: true,
                     itemBuilder: (b,s){
                       return Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: HexColor('#F2F2F2'),
                              border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            children: [
                          Image.network(
                          '${sn.data![s].picture!.medium}',
                            height: 100,
                            width: 100,
                          ),
                              Text('Name:  ${ sn.data![s].name!.first } ${ sn.data![s].name!.last } '),
                              Text('Email:  ${ sn.data![s].email }  '),
                              Text('Loation:  ${ sn.data![s].location!.city } , ${ sn.data![s].location!.country } '),
                              Text('DOB:   ${DateFormat("dd/MM/yyyy").format(DateTime.parse(sn.data![s].dob!.date!))}  '),
                              Text('Registered Day: ${DateFormat("dd/MM/yyyy").format(DateTime.parse(sn.data![s].registered!.date!))} '),



                            ],
                          ),
                        );

                 });

               }
           ),

         ],
       ),
     ),
   ),
    );
  }
}
