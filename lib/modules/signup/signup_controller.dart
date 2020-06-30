import 'package:mobx/mobx.dart';
import 'package:trampo/modules/signup/signup_repository.dart';
part 'signup_controller.g.dart';

class SignupController = _SignupControllerBase with _$SignupController;

abstract class _SignupControllerBase with Store {
  SignupRepository _repository;

  _SignupControllerBase() {
    _repository = SignupRepository();
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
  Future register() async {
    await _repository.register(email: email, password: password);
  }
}
