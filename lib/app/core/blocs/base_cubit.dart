import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../analytics/firebase_analytics_service.dart';
import '../widgets/core_toast_success/core_toast_success.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  BuildContext context;
  // late FirebaseAnalyticsService firebaseAnalyticsService;
  FToast? fToast;

  BaseCubit({required this.context, required State initialState})
      : super(initialState) {
    // firebaseAnalyticsService = GetIt.instance<FirebaseAnalyticsService>();
  }

  emitState(State state) {
    emit(state);
  }

  // Future<void> logEvent({
  //   required String name,
  //   Map<String, Object?>? parameters,
  //   // AnalyticsCallOptions? callOptions,
  // }) {
  //   return firebaseAnalyticsService.logEvent(
  //       name: name, parameters: parameters, callOptions: callOptions);
  // }

  showErrorMessage(String message) {
    showMessage(message, Icons.close, Colors.redAccent);
  }

  showSuccessMessage(String message){
    showMessage(message, Icons.check, Colors.greenAccent);
  }

  showMessage(String message, IconData icon, MaterialAccentColor? color) {
    if (fToast == null) {
      fToast = FToast();
      fToast!.init(context);
    }
    fToast!.showToast(
        child: CoreToastSuccess(
          message: message,
          color: color,
          icon: icon,
        ),
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2));
  }
}

abstract class BaseFormCubit<State> extends BaseCubit<State> {
  late final FormGroup formGroup;

  FormGroup getFormGroup();

  void updateFormValidationState(ControlStatus event);

  void updateFormGroupState(FormGroup formGroup) {}

  void afterInitialize(FormGroup formGroup) {}

  BaseFormCubit({required super.context, required super.initialState}) {
    formGroup = getFormGroup();
    formGroup.statusChanged.listen((ControlStatus event) {
      updateFormValidationState(event);
      updateFormGroupState(formGroup);
    });
    afterInitialize(formGroup);
  }
}

abstract class HydratedBaseCubit<State> extends HydratedCubit<State> {
  BuildContext context;

  HydratedBaseCubit({required this.context, required State initialState})
      : super(initialState);
}
