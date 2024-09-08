import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants.dart';

class SettingsState {
  final Language lang;
  final String? errorMessage;

  SettingsState({required this.lang, required this.errorMessage});

  SettingsState copyWith({
    Language? lang,
    String? errorMessage,
  }) {
    return SettingsState(
      lang: lang ?? this.lang,
      errorMessage: errorMessage,
    );
  }
}

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit()
      : super(
          SettingsState(lang: Language.eng, errorMessage: ''),
        );

  void updateState(Language lang) {
    if (Language.values.contains(lang)) {
      emit(state.copyWith(lang: lang));
    } else {
      emit(state.copyWith(
          errorMessage:
              '${lang.toString()} is not exist in enum class ${state.lang.runtimeType.toString()}'));
    }
  }
}
