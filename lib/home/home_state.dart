import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  //  Copy object for use in action
  HomeState getStateCopy();
}

class UnHomeState extends HomeState {
  @override
  String toString() {
    return "UnHomeState";
  }

  @override
  HomeState getStateCopy() {
    return UnHomeState();
  }

  @override
  List<Object> get props => null;
}

class InHomeState extends HomeState {
  @override
  String toString() {
    return "InHomeState";
  }

  @override
  HomeState getStateCopy() {
    return InHomeState();
  }

  @override
  List<Object> get props => null;
}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  ErrorHomeState(this.errorMessage);

  @override
  String toString() {
    return "ErrorHomeState";
  }

  @override
  HomeState getStateCopy() {
    return ErrorHomeState(this.errorMessage);
  }

  @override
  List<Object> get props => null;
}
