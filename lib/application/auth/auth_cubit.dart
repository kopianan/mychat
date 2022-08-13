import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:my_chat/domain/auth/i_auth.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuth) : super(AuthInitial());

  final IAuth iAuth;

  void registerUser(String login, String password) async {
    emit(OnLoading());
    final result = await iAuth.createUser(login, password);

    result.fold(
      (l) => emit(UnAuthenticated()),
      (r) => emit(Authenticated()),
    );
  }

  void loginUser(String login, String password) async {
    emit(OnLoading());
    final result = await iAuth.loginUser(login, password);

    result.fold(
      (l) => emit(UnAuthenticated()),
      (r) => emit(Authenticated()),
    );
  }
}
