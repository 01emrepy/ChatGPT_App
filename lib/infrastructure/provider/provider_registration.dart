import 'package:chatgpt/infrastructure/provider/completion_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final completionProvider =
    ChangeNotifierProvider((ref) => CompletionProvider());
