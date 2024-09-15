import 'dart:async';
import 'dart:ui';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationInitialState()) {
    on<LocalizationStartProcessEvent>(_onLocalizationStartProcessEvent);
  }
String language = 'en';
    FutureOr<void> _onLocalizationStartProcessEvent(
      LocalizationStartProcessEvent event,
      Emitter<LocalizationState> emit) {
    emit(LocalizationLoadingState());
    if (Locale(language) == const Locale('ar')) {
      language ='en';
    }
    else {
      language ='ar';
    }
    print('language is $language');
    emit(LocalizationUpdateState());
  }
}
