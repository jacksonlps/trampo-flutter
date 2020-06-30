import 'package:mobx/mobx.dart';
import 'package:trampo/modules/signin/signin_repository.dart';
part 'signin_controller.g.dart';

class SigninController = _SigninControllerBase with _$SigninController;

abstract class _SigninControllerBase with Store {
  SigninRepository _repository;

  _SigninControllerBase() {
    _repository = SigninRepository();
  }

  @observable
  String email;

  @action
  void setEmail(value) => email = value;

  @observable
  String password;

  @action
  void setPassword(value) => password = value;

  @action
  Future login() async {
    await _repository.login(email: email, password: password);
  }
}
