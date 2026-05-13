import 'package:bloc/bloc.dart';
import 'package:emcommercelite/feature/login/data/viewModel/repo/repoLogin.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> login(String user, String pass) async{
    emit(Loginloading());
   await Repologin.login(user, pass);
    emit(LoginSuccess());
  }
}
