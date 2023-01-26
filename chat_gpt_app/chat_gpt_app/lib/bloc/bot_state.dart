part of 'bot_bloc.dart';

@immutable
abstract class BotState {}

class BotInitial extends BotState {}

class UserMessage extends BotState {
  String? message;

  UserMessage(this.message);
}
