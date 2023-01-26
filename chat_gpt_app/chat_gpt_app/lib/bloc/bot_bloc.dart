import 'package:bloc/bloc.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:meta/meta.dart';

part 'bot_event.dart';
part 'bot_state.dart';

class BotBloc extends Bloc<BotEvent, BotState> {
  BotBloc() : super(BotInitial()) {
    on(_sendMessage);
  }
  void _sendMessage(BotEvent event, Emitter emit) async {
    // var apikey = "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";
    // var openAI = ChatGPT.instance
    //     .builder(apikey, baseOption: HttpSetup(receiveTimeout: 6000));
    String msg;
    BotInitial init;
    var msgcontroller = TextEditingController();
    var a = (event is BotResponEvent) ? msg = msgcontroller.text : null;
    emit(a);
  }
}
