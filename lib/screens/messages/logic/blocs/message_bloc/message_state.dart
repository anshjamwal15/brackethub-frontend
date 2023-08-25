part of 'message_bloc.dart';

@immutable
abstract class MessageState {}

class MessageInitialState extends MessageState {
  String? inputText;

  MessageInitialState({this.inputText});
}

class MessageNoInputState extends MessageState {}
