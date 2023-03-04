part of 'chatgpt_text_cubit.dart';

@freezed
class ChatgptTextState with _$ChatgptTextState {
  const factory ChatgptTextState({
    required bool loading,
    required bool error,
    required TextCompletionModel textCompletionModel,
  }) = _ChatgptTextState;

  factory ChatgptTextState.empty() => ChatgptTextState(
        loading: true,
        error: true,
        textCompletionModel: TextCompletionModel(
          created: 0,
          choices: [],
        ),
      );
}
