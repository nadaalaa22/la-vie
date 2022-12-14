import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/signup/cubit/states.dart';

import '../../../models/login_model.dart';
import '../../../shared/network/end_point.dart';
import '../../../shared/network/remote/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);
  late LoginModel loginModel ;

  void userLogin (
      {
        required String email ,
        required String password
      }
      )
  {
    emit(LoginLoadingState());
    DioHelper.postData(
        url: LOGIN,
        data: {
          'email': email,
          'password' : password,
        }).then((value) {
      loginModel= LoginModel.fromJson(value.data);
      print(value.data);
      emit(LoginSuccessState(loginModel));
    }).catchError((onError)
    {
      emit(LoginErrorState(onError..toString()));
    }
    );
  }




}