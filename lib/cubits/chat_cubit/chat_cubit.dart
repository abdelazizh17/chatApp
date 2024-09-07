import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:news_app_ui_setup/constants.dart';
import 'package:news_app_ui_setup/model/message_model.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  List<MessageModel> messageList = [];

  void sendMessage({required String message, required String email}) {
    messages.add({
      kMessage: message,
      kCreatedAt: DateTime.now(),
      'id': email,
    });
  }

  void getMessage() {
    messages.orderBy(kCreatedAt, descending: true).snapshots().listen(
      (event) {
        messageList.clear();
        for (var doc in event.docs) {
          messageList.add(MessageModel.fromJson(doc));
        }
        emit(ChatSuccess(messagesList: messageList));
      },
    );
  }
}
