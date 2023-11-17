// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_two_bloc.dart';

/// Represents the state of Iphone11ProMaxTwo in the application.
class Iphone11ProMaxTwoState extends Equatable {
  Iphone11ProMaxTwoState({
    this.emailController,
    this.passwordController,
    this.iphone11ProMaxTwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  Iphone11ProMaxTwoModel? iphone11ProMaxTwoModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        iphone11ProMaxTwoModelObj,
      ];
  Iphone11ProMaxTwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    Iphone11ProMaxTwoModel? iphone11ProMaxTwoModelObj,
  }) {
    return Iphone11ProMaxTwoState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      iphone11ProMaxTwoModelObj:
          iphone11ProMaxTwoModelObj ?? this.iphone11ProMaxTwoModelObj,
    );
  }
}
