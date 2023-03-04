import 'package:chatgpt/domain/I_api_service.dart';
import 'package:chatgpt/domain/text_completion_model.dart';
import 'package:chatgpt/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chatgpt_text_state.dart';
part 'chatgpt_text_cubit.freezed.dart';

@lazySingleton
class ChatgptTextCubit extends Cubit<ChatgptTextState> {
  late final IApiService _apiService;

  ChatgptTextCubit() : super(ChatgptTextState.empty()) {
    _apiService = getIt<IApiService>();
    getChatFromService();
  }

  void getChatFromService({String? question}) async {
    emit(state.copyWith(loading: true));

    final servicedata = await _apiService.sendMessage(question);

    final temporaryList = [
      ...state.textCompletionModel.choices,
    ];

    temporaryList.addAll(servicedata.map(
      (data) => TextCompletionModel(
        created: data.created,
        choices: data.choices,
      ),
    ));

    emit(state.copyWith(loading: false, textCompletionModel: servicedata));
  }
}
