import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatgpt_image_state.dart';
part 'chatgpt_image_cubit.freezed.dart';

class ChatgptImageCubit extends Cubit<ChatgptImageState> {
  ChatgptImageCubit() : super(ChatgptImageState.initial());
}
