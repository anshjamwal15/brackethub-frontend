part of 'message_bloc.dart';

@immutable
abstract class MessageEvent {}

class GetInput extends MessageEvent {
  String inputText;

  GetInput(this.inputText);
}
