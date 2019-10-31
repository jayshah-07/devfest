import 'package:equatable/equatable.dart';

abstract class ConfigState extends Equatable {
  const ConfigState();

  ConfigState getStateCopy();
}

class UnConfigState extends ConfigState{

  @override
  String toString() => 'UnConfigState';

  @override
  ConfigState getStateCopy() {
    // TODO: implement getStateCopy
    return UnConfigState();
  }

  @override
  // TODO: implement props
  List<Object> get props => null;

}

class InConfigState extends ConfigState{

  @override
  String toString() => 'InConfigState';

  @override
  ConfigState getStateCopy() {
    // TODO: implement getStateCopy
    return InConfigState();
  }

  @override
  // TODO: implement props
  List<Object> get props => null;

}

class ErrorConfigState extends ConfigState{

  final String errorMessage;
  ErrorConfigState(this.errorMessage);

  @override
  String toString() => 'ErrorConfigState';

  @override
  ConfigState getStateCopy() {
    // TODO: implement getStateCopy
    return ErrorConfigState(this.errorMessage);
  }

  @override
  // TODO: implement props
  List<Object> get props => null;

}