import 'package:flutter_bloc/flutter_bloc.dart';

class ActionsState {
  final Map<String, bool> actions;
  final String? errorMessage;

  ActionsState({required this.actions, required this.errorMessage});

  ActionsState copywith({
    Map<String, bool>? actions,
    String? errorMessage,
  }) {
    return ActionsState(
      actions: actions ?? this.actions,
      errorMessage: errorMessage,
    );
  }
}

class ActionsCubit extends Cubit<ActionsState> {
  ActionsCubit()
      : super(ActionsState(actions: {
          'mail': false,
          'phone': false,
          'sns': false,
          'more': false,
        }, errorMessage: ''));

  void toggleActionsState(String key) {
    final currentState = state.actions;

    if (currentState.containsKey(key)) {
      final updatedActions = Map<String, bool>.from(currentState);
      updatedActions[key] = !updatedActions[key]!;
      emit(state.copywith(actions: updatedActions));
    } else {
      emit(state.copywith(errorMessage: 'Key $key does not exist'));
    }
  }

  void setAllActionsStateFalse() {
    final updatedActions =
        state.actions.map((key, value) => MapEntry(key, false));
    emit(state.copywith(actions: updatedActions));
  }
}
