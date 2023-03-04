abstract class IApiService {
  Future sendMessage(String? message);
  Future generateImg(String question);
}
