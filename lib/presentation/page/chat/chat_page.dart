import 'package:chatgpt/application/chatgpt_text/chatgpt_text_cubit.dart';
import 'package:chatgpt/presentation/common_widget/custom_appbar.dart';
import 'package:chatgpt/presentation/common_widget/custom_profile_icon.dart';
import 'package:chatgpt/presentation/common_widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBarWidget(
          appBarColor: const Color(0xff1A1B28),
          leadingIcon: const Icon(
            Icons.menu,
            size: 28,
          ),
          appTitle: const AppText(
            title: "Intelligence",
            fontSize: 24,
            titleColor: Colors.white,
          ),
        ),
        body: BlocBuilder<ChatgptTextCubit, ChatgptTextState>(
          builder: (context, state) {
            if (state.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.error) {
              return const Center(
                child: Text('Error'),
              );
            }
            if (state.textCompletionModel.choices.isEmpty) {
              return const Center(
                child: Text('No Data'),
              );
            } else {
              return ListView.builder(
                itemCount: state.textCompletionModel.choices.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ChatParagraphTile(
                          text: state.textCompletionModel.choices[index].text,
                          leadingIcon: ChatGpt()),
                      const SizedBox(height: 16),
                      Container(
                          alignment: Alignment.bottomCenter,
                          child: TextFormField(
                            controller: controller,
                            decoration: InputDecoration(
                              hintText: 'Type your message',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  context
                                      .read<ChatgptTextCubit>()
                                      .getChatFromService(
                                          question: controller.text);
                                },
                                icon: Icon(Icons.send),
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          )),
                      const SizedBox(height: 16),
                    ],
                  );
                },
              );
            }
          },
        ));
  }
}
