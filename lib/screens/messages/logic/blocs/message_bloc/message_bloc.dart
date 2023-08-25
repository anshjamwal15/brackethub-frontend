import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageNoInputState());

  Stream<MessageState> mapEventToState(MessageEvent event) async* {
    if (event is GetInput) {
      yield* _mapGetInputEventToState(event);
    }
  }

  Stream<MessageState> _mapGetInputEventToState(GetInput event) async* {
    yield MessageInitialState(inputText: event.inputText);
  }
}
