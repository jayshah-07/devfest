import 'package:devfest/home/index.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  @override
  String toString() {
    return "LoadHomeEvent";
  }

  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async {
    try {
      await Future.delayed(Duration(seconds: 1));
      return InHomeState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorHomeState(_?.toString());
    }
  }

  @override
  List<Object> get props => null;
}
