import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatgpt_text_state.dart';
part 'chatgpt_text_cubit.freezed.dart';

class ChatgptTextCubit extends Cubit<ChatgptTextState> {
  ChatgptTextCubit() : super(ChatgptTextState.initial());
}
