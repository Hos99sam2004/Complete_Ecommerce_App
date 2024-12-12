import 'package:bloc/bloc.dart';
import 'package:complete_e_commerce_app/Presentation/Auth/Login/Model/Login_Model.dart';
import 'package:complete_e_commerce_app/Presentation/Helper/ApiConst.dart';
import 'package:complete_e_commerce_app/Presentation/Helper/Dio_Helper.dart';
import 'package:complete_e_commerce_app/Presentation/Helper/Hive_Helpers.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

        LoginModel loginModel=LoginModel();
  void login ({
    required String email ,
    required String password ,
}) async {
    emit(LoginLoading());
    try {
   final response = await ApiHelper.instance.post(url: ApiConst.LOGIN, body: {
        "email": email,
        "password":password,
      });
   loginModel =LoginModel.fromJson(response.data);
    if(loginModel.status==true||response.statusCode==200){
      // HiveHelper.Save_Token(loginModel.data!.token!);
      emit(LoginSuccess(loginModel.message!));
    }else{
      emit(LoginError(loginModel.message!));
    }
    }  catch (e) {
      // TODO
      emit(LoginError("Error: $e"));
    }

  }
}
